import 'package:lotr_api/src/query/filter/filter.dart';

class Matches implements Filter {
  final String value;

  Matches(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}=${value}';
  }
}
