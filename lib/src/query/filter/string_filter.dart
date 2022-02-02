import 'package:the_one_api/src/query/filter/filter.dart';

class StringFilter extends Filter {
  List<String> _queries = [];

  StringFilter(
    String attribute, {
    String? matches,
    String? notMatches,
  }) : super(attribute) {
    if (matches != null) {
      _queries.add('${attribute}=${matches}');
    }
    if (notMatches != null) {
      _queries.add('${attribute}!=${notMatches}');
    }
  }

  @override
  List<String> getQueries() {
    return _queries;
  }
}
