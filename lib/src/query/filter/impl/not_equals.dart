import 'package:lotr_api/src/query/filter/filter.dart';

/// NotEquals filter class to compare a value with an attribute
class NotEquals implements Filter {
  /// The value to compare with the attribute
  final num value;

  /// Constructor for NotEquals filter
  NotEquals(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}!=${value}';
  }
}
