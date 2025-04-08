import 'package:lotr_api/src/query/filter/filter.dart';

/// Includes filter class to check if an attribute includes certain values
class Includes implements Filter {
  /// The list of values to check for inclusion in the attribute
  final List<String> values;

  /// Constructor for Includes filter
  Includes(this.values);

  @override
  String buildExpression(String attribute) {
    return '${attribute}=${values.join(',')}';
  }
}
