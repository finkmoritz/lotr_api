import 'package:lotr_api/src/query/sorting/character/character_sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

class CharacterSortings {
  static final CharacterSorting byIdAsc = CharacterSorting(
    attribute: '_id',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting byIdDesc = CharacterSorting(
    attribute: '_id',
    direction: SortingDirection.desc,
  );

  static final CharacterSorting byNameAsc = CharacterSorting(
    attribute: 'name',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting byNameDesc = CharacterSorting(
    attribute: 'name',
    direction: SortingDirection.desc,
  );

  static final CharacterSorting byBirthAsc = CharacterSorting(
    attribute: 'birth',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting byBirthDesc = CharacterSorting(
    attribute: 'birth',
    direction: SortingDirection.desc,
  );

  static final CharacterSorting byDeathAsc = CharacterSorting(
    attribute: 'death',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting byDeathDesc = CharacterSorting(
    attribute: 'death',
    direction: SortingDirection.desc,
  );

  static final CharacterSorting byHairAsc = CharacterSorting(
    attribute: 'hair',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting byHairDesc = CharacterSorting(
    attribute: 'hair',
    direction: SortingDirection.desc,
  );

  static final CharacterSorting byGenderAsc = CharacterSorting(
    attribute: 'gender',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting byGenderDesc = CharacterSorting(
    attribute: 'gender',
    direction: SortingDirection.desc,
  );

  static final CharacterSorting byHeightAsc = CharacterSorting(
    attribute: 'height',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting byHeightDesc = CharacterSorting(
    attribute: 'height',
    direction: SortingDirection.desc,
  );

  static final CharacterSorting byRealmAsc = CharacterSorting(
    attribute: 'realm',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting byRealmDesc = CharacterSorting(
    attribute: 'realm',
    direction: SortingDirection.desc,
  );

  static final CharacterSorting bySpouseAsc = CharacterSorting(
    attribute: 'spouse',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting bySpouseDesc = CharacterSorting(
    attribute: 'spouse',
    direction: SortingDirection.desc,
  );

  static final CharacterSorting byRaceAsc = CharacterSorting(
    attribute: 'race',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting byRaceDesc = CharacterSorting(
    attribute: 'race',
    direction: SortingDirection.desc,
  );

  static final CharacterSorting byWikiUrlAsc = CharacterSorting(
    attribute: 'wikiUrl',
    direction: SortingDirection.asc,
  );
  static final CharacterSorting byWikiUrlDesc = CharacterSorting(
    attribute: 'wikiUrl',
    direction: SortingDirection.desc,
  );

  CharacterSortings._() {}
}
