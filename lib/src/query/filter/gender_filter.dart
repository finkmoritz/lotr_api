import 'package:the_one_api/src/query/filter/string_filter.dart';

class GenderFilter extends StringFilter {
  static final male = 'Male';
  static final female = 'Female';

  GenderFilter() : super('gender');
}
