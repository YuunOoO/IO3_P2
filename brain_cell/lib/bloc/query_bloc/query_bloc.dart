import 'package:bloc/bloc.dart';
import 'package:brain_cell/bloc/query_bloc/query_event/query_event.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_state.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_state_init.dart';

class CardBloc extends Bloc<QueryEvent, QueryState> {
  CardBloc() : super(QueryInitial()) {
    on<QueryEvent>((event, emit) {});
  }
}
