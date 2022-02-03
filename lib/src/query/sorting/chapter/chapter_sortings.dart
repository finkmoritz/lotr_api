import 'package:the_one_api/src/query/sorting/chapter/chapter_sorting.dart';
import 'package:the_one_api/src/query/sorting/sorting_direction.dart';

class ChapterSortings {
  static final ChapterSorting byIdAsc = ChapterSorting(
    attribute: '_id',
    direction: SortingDirection.asc,
  );
  static final ChapterSorting byIdDesc = ChapterSorting(
    attribute: '_id',
    direction: SortingDirection.desc,
  );

  static final ChapterSorting byChapterNameAsc = ChapterSorting(
    attribute: 'chapterName',
    direction: SortingDirection.asc,
  );
  static final ChapterSorting byChapterNameDesc = ChapterSorting(
    attribute: 'chapterName',
    direction: SortingDirection.desc,
  );
}
