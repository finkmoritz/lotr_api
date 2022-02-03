import 'package:the_one_api/src/query/sorting/sorting.dart';
import 'package:the_one_api/src/query/sorting/sorting_direction.dart';

class ChapterSorting extends Sorting {
  ChapterSorting({
    required String attribute,
    required SortingDirection direction,
  }) : super(
          attribute: attribute,
          direction: direction,
        );
}
