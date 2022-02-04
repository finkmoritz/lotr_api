import 'package:lotr_api/src/query/sorting/sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

class BookSorting extends Sorting {
  BookSorting({
    required String attribute,
    required SortingDirection direction,
  }) : super(
          attribute: attribute,
          direction: direction,
        );
}
