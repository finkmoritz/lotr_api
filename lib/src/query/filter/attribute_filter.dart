import 'package:lotr_api/src/query/filter/filter.dart';
import 'package:lotr_api/src/query/query.dart';

/// AttributeFilter class to filter results based on a specific attribute
class AttributeFilter implements Query {
  /// Attribute Key
  final String attribute;

  /// Filter expression
  final Filter? filter;

  /// Constructor for AttributeFilter
  AttributeFilter(this.attribute, this.filter);

  @override
  List<String> getQueries() {
    return filter == null ? [] : [filter!.buildExpression(attribute)];
  }
}
