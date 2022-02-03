import 'package:the_one_api/src/query/sorting/movie/movie_sorting.dart';
import 'package:the_one_api/src/query/sorting/sorting_direction.dart';

class MovieSortings {
  static final MovieSorting byIdAsc = MovieSorting(
    attribute: '_id',
    direction: SortingDirection.asc,
  );
  static final MovieSorting byIdDesc = MovieSorting(
    attribute: '_id',
    direction: SortingDirection.desc,
  );

  static final MovieSorting byNameAsc = MovieSorting(
    attribute: 'name',
    direction: SortingDirection.asc,
  );
  static final MovieSorting byNameDesc = MovieSorting(
    attribute: 'name',
    direction: SortingDirection.desc,
  );

  static final MovieSorting byRuntimeInMinutesAsc = MovieSorting(
    attribute: 'runtimeInMinutes',
    direction: SortingDirection.asc,
  );
  static final MovieSorting byRuntimeInMinutesDesc = MovieSorting(
    attribute: 'runtimeInMinutes',
    direction: SortingDirection.desc,
  );

  static final MovieSorting byBudgetInMillionsAsc = MovieSorting(
    attribute: 'budgetInMillions',
    direction: SortingDirection.asc,
  );
  static final MovieSorting byBudgetInMillionsDesc = MovieSorting(
    attribute: 'budgetInMillions',
    direction: SortingDirection.desc,
  );

  static final MovieSorting byBoxOfficeRevenueInMillionsAsc = MovieSorting(
    attribute: 'boxOfficeRevenueInMillions',
    direction: SortingDirection.asc,
  );
  static final MovieSorting byBoxOfficeRevenueInMillionsDesc = MovieSorting(
    attribute: 'boxOfficeRevenueInMillions',
    direction: SortingDirection.desc,
  );

  static final MovieSorting byAcademyAwardNominationsAsc = MovieSorting(
    attribute: 'academyAwardNominations',
    direction: SortingDirection.asc,
  );
  static final MovieSorting byAcademyAwardNominationsDesc = MovieSorting(
    attribute: 'academyAwardNominations',
    direction: SortingDirection.desc,
  );

  static final MovieSorting byAcademyAwardWinsAsc = MovieSorting(
    attribute: 'academyAwardWins',
    direction: SortingDirection.asc,
  );
  static final MovieSorting byAcademyAwardWinsDesc = MovieSorting(
    attribute: 'academyAwardWins',
    direction: SortingDirection.desc,
  );

  static final MovieSorting byRottenTomatoesScoreAsc = MovieSorting(
    attribute: 'rottenTomatoesScore',
    direction: SortingDirection.asc,
  );
  static final MovieSorting byRottenTomatoesScoreDesc = MovieSorting(
    attribute: 'rottenTomatoesScore',
    direction: SortingDirection.desc,
  );

  MovieSortings._() {}
}
