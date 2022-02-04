import 'package:the_one_api/src/query/filter/filter.dart';
import 'package:the_one_api/src/query/query.dart';

class AttributeFilter implements Query {
  final String attribute;
  final Filter? filter;

  AttributeFilter(
    this.attribute,
    this.filter,
  );

  @override
  List<String> getQueries() {
    return filter == null
        ? []
        : [
            filter!.buildExpression(attribute),
          ];
  }
}
