import 'package:lotr_api/src/query/filter/filter.dart';

class NotEquals implements Filter {
  final num value;

  NotEquals(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}!=${value}';
  }
}
