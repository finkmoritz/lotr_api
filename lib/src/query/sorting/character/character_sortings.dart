import 'package:lotr_api/src/query/sorting/character/character_sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// CharacterSortings class to provide predefined sorting options for character results
class CharacterSortings {
  /// Sorting by ID in ascending order
  static final CharacterSorting byIdAsc = CharacterSorting(
    attribute: '_id',
    direction: SortingDirection.asc,
  );

  /// Sorting by ID in descending order
  static final CharacterSorting byIdDesc = CharacterSorting(
    attribute: '_id',
    direction: SortingDirection.desc,
  );

  /// Sorting by name in ascending order
  static final CharacterSorting byNameAsc = CharacterSorting(
    attribute: 'name',
    direction: SortingDirection.asc,
  );

  /// Sorting by name in descending order
  static final CharacterSorting byNameDesc = CharacterSorting(
    attribute: 'name',
    direction: SortingDirection.desc,
  );

  /// Sorting by birth in ascending order
  static final CharacterSorting byBirthAsc = CharacterSorting(
    attribute: 'birth',
    direction: SortingDirection.asc,
  );

  /// Sorting by birth in descending order
  static final CharacterSorting byBirthDesc = CharacterSorting(
    attribute: 'birth',
    direction: SortingDirection.desc,
  );

  /// Sorting by death in ascending order
  static final CharacterSorting byDeathAsc = CharacterSorting(
    attribute: 'death',
    direction: SortingDirection.asc,
  );

  /// Sorting by death in descending order
  static final CharacterSorting byDeathDesc = CharacterSorting(
    attribute: 'death',
    direction: SortingDirection.desc,
  );

  /// Sorting by hair in ascending order
  static final CharacterSorting byHairAsc = CharacterSorting(
    attribute: 'hair',
    direction: SortingDirection.asc,
  );

  /// Sorting by hair in descending order
  static final CharacterSorting byHairDesc = CharacterSorting(
    attribute: 'hair',
    direction: SortingDirection.desc,
  );

  /// Sorting by gender in ascending order
  static final CharacterSorting byGenderAsc = CharacterSorting(
    attribute: 'gender',
    direction: SortingDirection.asc,
  );

  /// Sorting by gender in descending order
  static final CharacterSorting byGenderDesc = CharacterSorting(
    attribute: 'gender',
    direction: SortingDirection.desc,
  );

  /// Sorting by height in ascending order
  static final CharacterSorting byHeightAsc = CharacterSorting(
    attribute: 'height',
    direction: SortingDirection.asc,
  );

  /// Sorting by height in descending order
  static final CharacterSorting byHeightDesc = CharacterSorting(
    attribute: 'height',
    direction: SortingDirection.desc,
  );

  /// Sorting by realm in ascending order
  static final CharacterSorting byRealmAsc = CharacterSorting(
    attribute: 'realm',
    direction: SortingDirection.asc,
  );

  /// Sorting by realm in descending order
  static final CharacterSorting byRealmDesc = CharacterSorting(
    attribute: 'realm',
    direction: SortingDirection.desc,
  );

  /// Sorting by spouse in ascending order
  static final CharacterSorting bySpouseAsc = CharacterSorting(
    attribute: 'spouse',
    direction: SortingDirection.asc,
  );

  /// Sorting by spouse in descending order
  static final CharacterSorting bySpouseDesc = CharacterSorting(
    attribute: 'spouse',
    direction: SortingDirection.desc,
  );

  /// Sorting by race in ascending order
  static final CharacterSorting byRaceAsc = CharacterSorting(
    attribute: 'race',
    direction: SortingDirection.asc,
  );

  /// Sorting by race in descending order
  static final CharacterSorting byRaceDesc = CharacterSorting(
    attribute: 'race',
    direction: SortingDirection.desc,
  );

  /// Sorting by wikiUrl in ascending order
  static final CharacterSorting byWikiUrlAsc = CharacterSorting(
    attribute: 'wikiUrl',
    direction: SortingDirection.asc,
  );

  /// Sorting by wikiUrl in descending order
  static final CharacterSorting byWikiUrlDesc = CharacterSorting(
    attribute: 'wikiUrl',
    direction: SortingDirection.desc,
  );

  /// Private constructor to prevent instantiation
  CharacterSortings._() {}
}
