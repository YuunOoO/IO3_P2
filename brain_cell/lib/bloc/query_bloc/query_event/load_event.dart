import 'package:brain_cell/bloc/query_bloc/query_event/query_event.dart';
import 'package:brain_cell/models/query_model.dart';

class LoadEvent extends QueryEvent {
  final List<Query> list;
  const LoadEvent(this.list);

  @override
  List<Object> get props => [];
}
