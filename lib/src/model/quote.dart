/// Quote model
class Quote {
  /// Unique identifier for the quote
  final String id;

  /// The actual quote text
  final String dialog;

  /// Unique identifier for the movie associated with the quote
  final String movieId;

  /// Unique identifier for the character associated with the quote
  final String characterId;

  /// Default constructor for the Quote class
  Quote({
    required this.id,
    required this.dialog,
    required this.movieId,
    required this.characterId,
  });

  /// Factory constructor to create a Quote instance from JSON
  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(
      id: json['_id'],
      dialog: json['dialog'],
      movieId: json['movie'],
      characterId: json['character'],
    );
  }

  @override
  String toString() {
    return '''Quote(
    id: $id,
    dialog: $dialog,
    movie: $movieId,
    character: $characterId,
)''';
  }
}
