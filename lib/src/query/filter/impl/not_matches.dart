import 'package:lotr_api/src/query/filter/filter.dart';

/// NotMatches filter class to compare a value with an attribute
class NotMatches implements Filter {
  /// The value to compare with the attribute
  final String value;

  /// Constructor for NotMatches filter
  NotMatches(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}!=${value}';
  }
}
