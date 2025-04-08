import 'package:lotr_api/src/query/filter/filter.dart';

/// Matches filter class to compare a value with an attribute
class Matches implements Filter {
  /// The value to compare with the attribute
  final String value;

  /// Constructor for Matches filter
  Matches(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}=${value}';
  }
}
