import 'package:the_one_api/src/query/filter/filter.dart';

class GreaterThanOrEquals implements Filter {
  final num value;

  GreaterThanOrEquals(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}>=${value}';
  }
}
