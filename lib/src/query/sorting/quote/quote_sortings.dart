import 'package:lotr_api/src/query/sorting/quote/quote_sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// QuoteSortings class to provide predefined sorting options for quotes
class QuoteSortings {
  /// Sorting by ID in ascending order
  static final QuoteSorting byIdAsc = QuoteSorting(
    attribute: '_id',
    direction: SortingDirection.asc,
  );

  /// Sorting by ID in descending order
  static final QuoteSorting byIdDesc = QuoteSorting(
    attribute: '_id',
    direction: SortingDirection.desc,
  );

  /// Sorting by dialog in ascending order
  static final QuoteSorting byDialogAsc = QuoteSorting(
    attribute: 'dialog',
    direction: SortingDirection.asc,
  );

  /// Sorting by dialog in descending order
  static final QuoteSorting byDialogDesc = QuoteSorting(
    attribute: 'dialog',
    direction: SortingDirection.desc,
  );

  /// Private constructor to prevent instantiation
  QuoteSortings._() {}
}
