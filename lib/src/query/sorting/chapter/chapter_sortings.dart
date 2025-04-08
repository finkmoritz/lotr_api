import 'package:lotr_api/src/query/sorting/chapter/chapter_sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting_direction.dart';

/// ChapterSortings class to provide predefined sorting options for chapters
class ChapterSortings {
  /// Sorting by ID in ascending order
  static final ChapterSorting byIdAsc = ChapterSorting(
    attribute: '_id',
    direction: SortingDirection.asc,
  );

  /// Sorting by ID in descending order
  static final ChapterSorting byIdDesc = ChapterSorting(
    attribute: '_id',
    direction: SortingDirection.desc,
  );

  /// Sorting by chapter name in ascending order
  static final ChapterSorting byChapterNameAsc = ChapterSorting(
    attribute: 'chapterName',
    direction: SortingDirection.asc,
  );

  /// Sorting by chapter name in descending order
  static final ChapterSorting byChapterNameDesc = ChapterSorting(
    attribute: 'chapterName',
    direction: SortingDirection.desc,
  );

  /// Private constructor to prevent instantiation
  ChapterSortings._() {}
}
