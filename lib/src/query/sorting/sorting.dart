import 'package:lotr_api/src/query/query.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// Sorting class to sort results based on an attribute and direction
class Sorting implements Query {
  /// The attribute to sort by
  final String attribute;

  /// The direction to sort (ascending or descending)
  final SortingDirection direction;

  /// Constructor for Sorting
  Sorting({required this.attribute, required this.direction});

  @override
  List<String> getQueries() {
    String dir = direction == SortingDirection.asc ? 'asc' : 'desc';
    return ['sort=${attribute}:${dir}'];
  }
}
