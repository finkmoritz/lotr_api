import 'package:lotr_api/src/query/sorting/sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

class CharacterSorting extends Sorting {
  CharacterSorting({
    required String attribute,
    required SortingDirection direction,
  }) : super(
          attribute: attribute,
          direction: direction,
        );
}
