import 'package:the_one_api/src/model/doc.dart';

class Book extends Doc<Book> {
  final String id;
  final String name;

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

  @override
  Book fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['_id'],
      name: json['name'],
    );
  }
}
