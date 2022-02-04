import 'package:lotr_api/src/query/sorting/book/book_sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

class BookSortings {
  static final BookSorting byIdAsc = BookSorting(
    attribute: '_id',
    direction: SortingDirection.asc,
  );
  static final BookSorting byIdDesc = BookSorting(
    attribute: '_id',
    direction: SortingDirection.desc,
  );

  static final BookSorting byNameAsc = BookSorting(
    attribute: 'name',
    direction: SortingDirection.asc,
  );
  static final BookSorting byNameDesc = BookSorting(
    attribute: 'name',
    direction: SortingDirection.desc,
  );

  BookSortings._() {}
}
