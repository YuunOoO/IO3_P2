// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:brain_cell/bloc/query_bloc/query_event/load_event.dart';
import 'package:brain_cell/bloc/query_bloc/query_event/query_change_event.dart';
import 'package:brain_cell/bloc/query_bloc/query_event/query_event.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_changed.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_loading_state.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_shimmer_state.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_state.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_state_init.dart';
import 'package:brain_cell/models/query_model.dart';

class QueryBloc extends Bloc<QueryEvent, QueryState> {
  late List<Query> list;
  int idx = 0;
  int pointScored = 0;
  int myAnswer = 0;
  List<int> myAnswers = [];

  QueryBloc() : super(QueryInitial()) {
    on<LoadEvent>((event, emit) async {
      emit(QueryShimmerState());
      list = event.list;
      await Future.delayed(const Duration(seconds: 1));
      emit(QueryChanged(list.first));
    });

    on<QueryChangeEvent>((event, emit) async {
      emit(QueryLoadingState(list[idx]));
      myAnswers.add(event.myAnswer);
      if (event.myAnswer == state.query.correctAnswer) {
        pointScored++;
      }
      myAnswer = event.myAnswer;
      idx++;
      await Future.delayed(const Duration(seconds: 1));
      if (idx < list.length) {
        emit(QueryChanged(list[idx]));
      }
    });
  }
}
