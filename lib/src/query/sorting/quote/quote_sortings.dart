import 'package:the_one_api/src/query/sorting/quote/quote_sorting.dart';
import 'package:the_one_api/src/query/sorting/sorting_direction.dart';

class QuoteSortings {
  static final QuoteSorting byIdAsc = QuoteSorting(
    attribute: '_id',
    direction: SortingDirection.asc,
  );
  static final QuoteSorting byIdDesc = QuoteSorting(
    attribute: '_id',
    direction: SortingDirection.desc,
  );

  static final QuoteSorting byDialogAsc = QuoteSorting(
    attribute: 'dialog',
    direction: SortingDirection.asc,
  );
  static final QuoteSorting byDialogDesc = QuoteSorting(
    attribute: 'dialog',
    direction: SortingDirection.desc,
  );

  QuoteSortings._() {}
}
