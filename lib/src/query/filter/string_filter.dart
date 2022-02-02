import 'package:the_one_api/src/query/filter/filter.dart';

class StringFilter extends Filter {
  late final List<String> _queries;

  StringFilter(
    String attribute, {
    queries = const <String>[],
  }) : super(attribute) {
    _queries = queries;
  }

  StringFilter equals(String value) {
    return StringFilter(
      attribute,
      queries: _queries + ['${attribute}=${value}'],
    );
  }

  StringFilter notEquals(String value) {
    return StringFilter(
      attribute,
      queries: _queries + ['${attribute}!=${value}'],
    );
  }

  @override
  List<String> getQueries() {
    return _queries;
  }
}
