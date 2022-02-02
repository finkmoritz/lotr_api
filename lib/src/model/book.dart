import 'package:the_one_api/src/query/filter/string_filter.dart';

class Book {
  final String id;
  final String name;

  static final StringFilter filterId = StringFilter('_id');
  static final StringFilter filterName = StringFilter('name');

  Book({
    required this.id,
    required this.name,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['_id'],
      name: json['name'],
    );
  }

  @override
  String toString() {
    return '''Book(
    id: $id,
    name: $name,
)''';
  }
}
