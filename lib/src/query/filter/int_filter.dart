import 'package:the_one_api/src/query/filter/filter.dart';

class IntFilter extends Filter {
  String? matches;
  String? notMatches;

  IntFilter(String attribute) : super(attribute);

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
