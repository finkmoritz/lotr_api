import 'package:lotr_api/src/query/filter/filter.dart';

class Exists implements Filter {
  Exists();

  @override
  String buildExpression(String attribute) {
    return attribute;
  }
}
