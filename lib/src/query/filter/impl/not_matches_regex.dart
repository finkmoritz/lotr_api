import 'package:lotr_api/src/query/filter/filter.dart';

/// NotMatchesRegex filter class to compare a value with an attribute using regex
class NotMatchesRegex implements Filter {
  /// The regex expression to compare with the attribute
  final String expression;

  /// Constructor for NotMatchesRegex filter
  NotMatchesRegex(this.expression);

  @override
  String buildExpression(String attribute) {
    return '${attribute}!=/${expression}/i';
  }
}
