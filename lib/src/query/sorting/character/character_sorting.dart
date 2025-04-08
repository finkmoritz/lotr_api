import 'package:lotr_api/src/query/sorting/sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// CharacterSorting class to sort character results based on an attribute and direction
class CharacterSorting extends Sorting {
  /// Constructor for CharacterSorting
  CharacterSorting({
    required String attribute,
    required SortingDirection direction,
  }) : super(attribute: attribute, direction: direction);
}
