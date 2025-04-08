/// Book model
class Book {
  /// Unique identifier for the book
  final String id;

  /// Name of the book
  final String name;

  /// Default constructor for the Book class
  Book({
    required this.id,
    required this.name,
  });

  /// Factory constructor to create a Book instance from JSON
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
