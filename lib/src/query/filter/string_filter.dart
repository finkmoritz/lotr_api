import 'package:the_one_api/src/query/filter/filter.dart';
import 'package:the_one_api/src/util/utils.dart';

class StringFilter extends Filter {
  String? matches;
  String? notMatches;
  String? matchesRegex;
  String? notMatchesRegex;
  List<String>? includes;
  List<String>? excludes;
  bool? exists;

  StringFilter(String attribute) : super(attribute);

  @override
  List<String> getQueries() {
    List<String> queries = [];
    if (matches != null) {
      queries.add('${attribute}=${matches}');
    }
    if (notMatches != null) {
      queries.add('${attribute}!=${notMatches}');
    }
    if (matchesRegex != null) {
      queries.add('${attribute}=/${matchesRegex}/i');
    }
    if (notMatchesRegex != null) {
      queries.add('${attribute}!=/${notMatchesRegex}/i');
    }
    if (includes != null) {
      queries.add('${attribute}=${includes!.join(',')}');
    }
    if (excludes != null) {
      queries.add('${attribute}!=${excludes!.join(',')}');
    }
    if (exists != null) {
      queries.add('${exists! ? '' : '!'}${attribute}');
    }
    if (queries.length > 1) {
      Utils.printWarning('Set more than one filter on attribute ${attribute}!');
    }
    return queries;
  }
}
