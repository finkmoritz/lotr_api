import 'package:lotr_api/src/query/filter/filter.dart';

class NotMatchesRegex implements Filter {
  final String expression;

  NotMatchesRegex(this.expression);

  @override
  String buildExpression(String attribute) {
    return '${attribute}!=/${expression}/i';
  }
}
