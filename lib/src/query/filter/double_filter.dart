import 'package:the_one_api/src/query/filter/filter.dart';
import 'package:the_one_api/src/util/utils.dart';

class DoubleFilter extends Filter {
  String? equals;
  String? notEquals;
  double? lessThan;
  double? lessThanOrEquals;
  double? greaterThan;
  double? greaterThanOrEquals;
  bool? exists;

  DoubleFilter(String attribute) : super(attribute);

  @override
  List<String> getQueries() {
    List<String> queries = [];
    if (equals != null) {
      queries.add('${attribute}=${equals}');
    }
    if (notEquals != null) {
      queries.add('${attribute}!=${notEquals}');
    }
    if (lessThan != null) {
      queries.add('${attribute}<${lessThan}');
    }
    if (lessThanOrEquals != null) {
      queries.add('${attribute}<=${lessThanOrEquals}');
    }
    if (greaterThan != null) {
      queries.add('${attribute}>${greaterThan}');
    }
    if (greaterThanOrEquals != null) {
      queries.add('${attribute}>=${greaterThanOrEquals}');
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
