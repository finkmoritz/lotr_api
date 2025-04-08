import 'package:lotr_api/src/query/filter/filter.dart';

/// GreaterThan filter class to compare a value with an attribute
class GreaterThan implements Filter {
  /// The value to compare with the attribute
  final num value;

  /// Constructor for GreaterThan filter
  GreaterThan(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}>${value}';
  }
}
