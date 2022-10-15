import 'package:brain_cell/bloc/query_bloc/query_state/query_state.dart';
import 'package:brain_cell/models/query_model.dart';

class QueryLoadingState extends QueryState {
  const QueryLoadingState(Query query) : super(query);
  @override
  List<Object> get props => [query];
}
