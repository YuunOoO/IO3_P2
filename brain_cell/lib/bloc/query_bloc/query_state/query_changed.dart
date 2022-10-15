import 'package:brain_cell/bloc/query_bloc/query_state/query_state.dart';
import 'package:brain_cell/models/query_model.dart';

class QueryChanged extends QueryState {
  const QueryChanged(Query query) : super(query);
  @override
  List<Object> get props => [query];
}
