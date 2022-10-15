import 'package:brain_cell/models/query_model.dart';
import 'package:equatable/equatable.dart';

abstract class QueryState extends Equatable {
  final Query query;
  const QueryState(this.query);

  @override
  List<Object> get props => [];
}
