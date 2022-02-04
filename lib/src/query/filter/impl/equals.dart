import 'package:the_one_api/src/query/filter/filter.dart';

class Equals implements Filter {
  final num value;

  Equals(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}=${value}';
  }
}
