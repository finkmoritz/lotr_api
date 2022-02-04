import 'package:lotr_api/src/query/filter/filter.dart';

class Excludes implements Filter {
  final List<String> values;

  Excludes(this.values);

  @override
  String buildExpression(String attribute) {
    return '${attribute}!=${values.join(',')}';
  }
}
