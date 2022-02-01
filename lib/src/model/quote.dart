class Quote {
  final String id;
  final String dialog;
  final String movieId;
  final String characterId;

  Quote({
    required this.id,
    required this.dialog,
    required this.movieId,
    required this.characterId,
  });

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
