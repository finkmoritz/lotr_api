import 'package:lotr_api/src/query/filter/filter.dart';

/// Exists filter class to check if an attribute exists
class Exists implements Filter {
  /// Constructor for Exists filter
  Exists();

  @override
  String buildExpression(String attribute) {
    return attribute;
  }
}
