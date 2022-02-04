import 'package:lotr_api/src/query/filter/filter.dart';

class NotExists implements Filter {
  NotExists();

  @override
  String buildExpression(String attribute) {
    return '!$attribute';
  }
}
