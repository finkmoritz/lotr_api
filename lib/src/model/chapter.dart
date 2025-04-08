/// Chapter model
class Chapter {
  /// Unique identifier for the chapter
  final String id;

  /// Name of the chapter
  final String chapterName;

  /// Default constructor for the Chapter class
  Chapter({
    required this.id,
    required this.chapterName,
  });

  /// Factory constructor to create a Chapter instance from JSON
  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      id: json['_id'],
      chapterName: json['chapterName'],
    );
  }

  @override
  String toString() {
    return '''Chapter(
    id: $id,
    chapterName: $chapterName,
)''';
  }
}
