import 'package:lotr_api/src/query/query.dart';

/// Pagination class to handle pagination in API queries
class Pagination implements Query {
  /// The maximum number of items to return
  final int? limit;

  /// The page number to return
  final int? page;

  /// The offset to start returning items from
  final int? offset;

  /// Constructor for Pagination
  Pagination({this.limit, this.page, this.offset});

  @override
  List<String> getQueries() {
    List<String> queries = [];
    if (limit != null) {
      queries.add('limit=$limit');
    }
    if (page != null) {
      queries.add('page=$page');
    }
    if (offset != null) {
      queries.add('offset=$offset');
    }
    return queries;
  }
}
