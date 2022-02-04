import 'package:lotr_api/src/query/query.dart';

class Pagination implements Query {
  final int? limit;
  final int? page;
  final int? offset;

  Pagination({
    this.limit,
    this.page,
    this.offset,
  });

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
