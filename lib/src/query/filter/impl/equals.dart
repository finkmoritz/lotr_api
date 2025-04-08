import 'package:lotr_api/src/query/filter/filter.dart';

/// Equals filter class to compare a value with an attribute
class Equals implements Filter {
  /// The value to compare with the attribute
  final num value;

  /// Constructor for Equals filter
  Equals(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}=${value}';
  }
}
