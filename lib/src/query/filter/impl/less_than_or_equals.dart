import 'package:lotr_api/src/query/filter/filter.dart';

/// LessThanOrEquals filter class to compare a value with an attribute
class LessThanOrEquals implements Filter {
  /// The value to compare with the attribute
  final num value;

  /// Constructor for LessThanOrEquals filter
  LessThanOrEquals(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}<=${value}';
  }
}
