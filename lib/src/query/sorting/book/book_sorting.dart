import 'package:lotr_api/src/query/sorting/sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// BookSorting class to sort book results based on an attribute and direction
class BookSorting extends Sorting {
  /// Constructor for BookSorting
  BookSorting({required String attribute, required SortingDirection direction})
    : super(attribute: attribute, direction: direction);
}
