import 'package:the_one_api/src/query/filter/filter.dart';

class LessThan implements Filter {
  final num value;

  LessThan(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}<${value}';
  }
}
