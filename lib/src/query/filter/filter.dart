import 'package:the_one_api/src/query/query.dart';

abstract class Filter implements Query {
  final String attribute;

  Filter(this.attribute);
}
