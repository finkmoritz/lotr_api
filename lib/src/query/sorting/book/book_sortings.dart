import 'package:lotr_api/src/query/sorting/book/book_sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// BookSortings class to provide predefined sorting options for books
class BookSortings {
  /// Sorting by ID in ascending order
  static final BookSorting byIdAsc = BookSorting(
    attribute: '_id',
    direction: SortingDirection.asc,
  );

  /// Sorting by ID in descending order
  static final BookSorting byIdDesc = BookSorting(
    attribute: '_id',
    direction: SortingDirection.desc,
  );

  /// Sorting by name in ascending order
  static final BookSorting byNameAsc = BookSorting(
    attribute: 'name',
    direction: SortingDirection.asc,
  );

  /// Sorting by name in descending order
  static final BookSorting byNameDesc = BookSorting(
    attribute: 'name',
    direction: SortingDirection.desc,
  );

  /// Private constructor to prevent instantiation
  BookSortings._() {}
}
