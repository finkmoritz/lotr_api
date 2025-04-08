import 'package:lotr_api/src/query/sorting/sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// MovieSorting class to sort movie results based on an attribute and direction
class MovieSorting extends Sorting {
  /// Constructor for MovieSorting
  MovieSorting({required String attribute, required SortingDirection direction})
    : super(attribute: attribute, direction: direction);
}
