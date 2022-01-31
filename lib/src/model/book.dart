class Book {
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
}
