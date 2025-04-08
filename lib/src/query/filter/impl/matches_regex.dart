import 'package:lotr_api/src/query/filter/filter.dart';

/// MatchesRegex filter class to compare a value with an attribute using regex
class MatchesRegex implements Filter {
  /// The regex expression to compare with the attribute
  final String expression;

  /// Constructor for MatchesRegex filter
  MatchesRegex(this.expression);

  @override
  String buildExpression(String attribute) {
    return '${attribute}=/${expression}/i';
  }
}
