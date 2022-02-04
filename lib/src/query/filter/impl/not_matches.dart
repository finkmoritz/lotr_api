import 'package:the_one_api/src/query/filter/filter.dart';

class NotMatches implements Filter {
  final String value;

  NotMatches(this.value);

  @override
  String buildExpression(String attribute) {
    return '${attribute}!=${value}';
  }
}
