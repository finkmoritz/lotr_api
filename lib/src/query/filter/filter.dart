/// Abstract class for building filter expressions.
abstract class Filter {
  /// Build a filter expression based on the provided attribute.
  String buildExpression(String attribute);
}
