import 'package:lotr_api/src/query/filter/filter.dart';

class LessThanOrEquals implements Filter {
  final num value;

  LessThanOrEquals(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}<=${value}';
  }
}
