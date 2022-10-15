import 'package:brain_cell/bloc/query_bloc/query_event/query_event.dart';

class QueryChangeEvent extends QueryEvent {
  final int myAnswer;
  const QueryChangeEvent(this.myAnswer);
  @override
  List<Object> get props => [];
}
