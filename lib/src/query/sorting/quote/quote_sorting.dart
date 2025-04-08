import 'package:lotr_api/src/query/sorting/sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// QuoteSorting class to sort quote results based on an attribute and direction
class QuoteSorting extends Sorting {
  /// Constructor for QuoteSorting
  QuoteSorting({
    required String attribute,
    required SortingDirection direction,
  }) : super(
          attribute: attribute,
          direction: direction,
        );
}
