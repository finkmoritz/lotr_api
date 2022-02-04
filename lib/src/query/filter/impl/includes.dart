import 'package:the_one_api/src/query/filter/filter.dart';

class Includes implements Filter {
  final List<String> values;

  Includes(this.values);

  @override
  String buildExpression(String attribute) {
    return '${attribute}=${values.join(',')}';
  }
}
