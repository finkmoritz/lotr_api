import 'package:lotr_api/src/query/filter/filter.dart';

class MatchesRegex implements Filter {
  final String expression;

  MatchesRegex(this.expression);

  @override
  String buildExpression(String attribute) {
    return '${attribute}=/${expression}/i';
  }
}
