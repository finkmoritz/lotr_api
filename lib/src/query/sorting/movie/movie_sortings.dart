import 'package:lotr_api/src/query/sorting/movie/movie_sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// MovieSortings class to provide predefined sorting options for movies
class MovieSortings {
  /// Sorting by ID in ascending order
  static final MovieSorting byIdAsc = MovieSorting(
    attribute: '_id',
    direction: SortingDirection.asc,
  );

  /// Sorting by ID in descending order
  static final MovieSorting byIdDesc = MovieSorting(
    attribute: '_id',
    direction: SortingDirection.desc,
  );

  /// Sorting by name in ascending order
  static final MovieSorting byNameAsc = MovieSorting(
    attribute: 'name',
    direction: SortingDirection.asc,
  );

  /// Sorting by name in descending order
  static final MovieSorting byNameDesc = MovieSorting(
    attribute: 'name',
    direction: SortingDirection.desc,
  );

  /// Sorting by runtime in ascending order
  static final MovieSorting byRuntimeInMinutesAsc = MovieSorting(
    attribute: 'runtimeInMinutes',
    direction: SortingDirection.asc,
  );

  /// Sorting by runtime in descending order
  static final MovieSorting byRuntimeInMinutesDesc = MovieSorting(
    attribute: 'runtimeInMinutes',
    direction: SortingDirection.desc,
  );

  /// Sorting by release date in ascending order
  static final MovieSorting byBudgetInMillionsAsc = MovieSorting(
    attribute: 'budgetInMillions',
    direction: SortingDirection.asc,
  );

  /// Sorting by release date in descending order
  static final MovieSorting byBudgetInMillionsDesc = MovieSorting(
    attribute: 'budgetInMillions',
    direction: SortingDirection.desc,
  );

  /// Sorting by box office revenue in ascending order
  static final MovieSorting byBoxOfficeRevenueInMillionsAsc = MovieSorting(
    attribute: 'boxOfficeRevenueInMillions',
    direction: SortingDirection.asc,
  );

  /// Sorting by box office revenue in descending order
  static final MovieSorting byBoxOfficeRevenueInMillionsDesc = MovieSorting(
    attribute: 'boxOfficeRevenueInMillions',
    direction: SortingDirection.desc,
  );

  /// Sorting by release date in ascending order
  static final MovieSorting byAcademyAwardNominationsAsc = MovieSorting(
    attribute: 'academyAwardNominations',
    direction: SortingDirection.asc,
  );

  /// Sorting by release date in descending order
  static final MovieSorting byAcademyAwardNominationsDesc = MovieSorting(
    attribute: 'academyAwardNominations',
    direction: SortingDirection.desc,
  );

  /// Sorting by release date in ascending order
  static final MovieSorting byAcademyAwardWinsAsc = MovieSorting(
    attribute: 'academyAwardWins',
    direction: SortingDirection.asc,
  );

  /// Sorting by release date in descending order
  static final MovieSorting byAcademyAwardWinsDesc = MovieSorting(
    attribute: 'academyAwardWins',
    direction: SortingDirection.desc,
  );

  /// Sorting by release date in ascending order
  static final MovieSorting byRottenTomatoesScoreAsc = MovieSorting(
    attribute: 'rottenTomatoesScore',
    direction: SortingDirection.asc,
  );

  /// Sorting by release date in descending order
  static final MovieSorting byRottenTomatoesScoreDesc = MovieSorting(
    attribute: 'rottenTomatoesScore',
    direction: SortingDirection.desc,
  );

  /// Private constructor to prevent instantiation
  MovieSortings._() {}
}
