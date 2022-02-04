import 'package:lotr_api/src/query/query.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

class Sorting implements Query {
  final String attribute;
  final SortingDirection direction;

  Sorting({
    required this.attribute,
    required this.direction,
  });

  @override
  List<String> getQueries() {
    String dir = direction == SortingDirection.asc ? 'asc' : 'desc';
    return [
      'sort=${attribute}:${dir}',
    ];
  }
}
