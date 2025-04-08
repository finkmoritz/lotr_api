import 'package:lotr_api/src/query/filter/filter.dart';

/// Excludes filter class to exclude specific values from an attribute
class Excludes implements Filter {
  /// The list of values to exclude from the attribute
  final List<String> values;

  /// Constructor for Excludes filter
  Excludes(this.values);

  @override
  String buildExpression(String attribute) {
    return '${attribute}!=${values.join(',')}';
  }
}
