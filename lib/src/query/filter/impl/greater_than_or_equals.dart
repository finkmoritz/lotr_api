import 'package:lotr_api/src/query/filter/filter.dart';

/// GreaterThanOrEquals filter class to compare a value with an attribute
class GreaterThanOrEquals implements Filter {
  /// The value to compare with the attribute
  final num value;

  /// Constructor for GreaterThanOrEquals filter
  GreaterThanOrEquals(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}>=${value}';
  }
}
