import 'package:lotr_api/src/query/filter/filter.dart';

/// NotExists filter class to check if an attribute does not exist
class NotExists implements Filter {
  /// Constructor for NotExists filter
  NotExists();

  @override
  String buildExpression(String attribute) {
    return '!$attribute';
  }
}
