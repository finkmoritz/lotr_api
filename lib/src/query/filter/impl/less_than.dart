import 'package:lotr_api/src/query/filter/filter.dart';

/// LessThan filter class to compare a value with an attribute
class LessThan implements Filter {
  /// The value to compare with the attribute
  final num value;

  /// Constructor for LessThan filter
  LessThan(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}<${value}';
  }
}
