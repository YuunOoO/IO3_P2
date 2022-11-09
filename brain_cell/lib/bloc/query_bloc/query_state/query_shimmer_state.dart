import 'package:brain_cell/bloc/query_bloc/query_state/query_state.dart';
import 'package:brain_cell/models/query_model.dart';

class QueryShimmerState extends QueryState {
  QueryShimmerState() : super(Query([], 0, ""));
  @override
  List<Object> get props => [];
}
