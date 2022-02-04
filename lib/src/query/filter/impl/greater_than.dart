import 'package:lotr_api/src/query/filter/filter.dart';

class GreaterThan implements Filter {
  final num value;

  GreaterThan(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}>${value}';
  }
}
