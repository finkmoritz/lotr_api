import 'package:the_one_api/src/query/filter/filter.dart';

class StringFilter extends Filter {
  String? matches;
  String? notMatches;

  StringFilter(String attribute) : super(attribute);

  @override
  List<String> getQueries() {
    List<String> _queries = [];
    if (matches != null) {
      _queries.add('${attribute}=${matches}');
    }
    if (notMatches != null) {
      _queries.add('${attribute}!=${notMatches}');
    }
    return _queries;
  }
}
