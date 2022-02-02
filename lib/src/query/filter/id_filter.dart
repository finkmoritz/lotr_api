import 'package:the_one_api/src/query/filter/string_filter.dart';

class IdFilter extends StringFilter {
  IdFilter({
    String? matches,
    String? notMatches,
  }) : super(
          '_id',
          matches: matches,
          notMatches: notMatches,
        );
}
