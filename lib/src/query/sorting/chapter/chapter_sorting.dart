import 'package:lotr_api/src/query/sorting/sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// ChapterSorting class to sort chapter results based on an attribute and direction
class ChapterSorting extends Sorting {
  /// Constructor for ChapterSorting
  ChapterSorting({
    required String attribute,
    required SortingDirection direction,
  }) : super(attribute: attribute, direction: direction);
}
