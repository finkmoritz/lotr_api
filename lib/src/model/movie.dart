import 'package:lotr_api/src/util/utils.dart';

/// Movie model
class Movie {
  /// Unique identifier for the movie
  final String id;

  /// Name of the movie
  final String name;

  /// Runtime of the movie in minutes
  final int runtimeInMinutes;

  /// Budget of the movie in millions
  final int budgetInMillions;

  /// Box office revenue of the movie in millions
  final double boxOfficeRevenueInMillions;

  /// Number of Academy Award nominations
  final int academyAwardNominations;

  /// Number of Academy Award wins
  final int academyAwardWins;

  /// Rotten Tomatoes score of the movie
  final double rottenTomatoesScore;

  /// Default constructor for the Movie class
  Movie({
    required this.id,
    required this.name,
    required this.runtimeInMinutes,
    required this.budgetInMillions,
    required this.boxOfficeRevenueInMillions,
    required this.academyAwardNominations,
    required this.academyAwardWins,
    required this.rottenTomatoesScore,
  });

  /// Factory constructor to create a Movie instance from JSON
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['_id'],
      name: json['name'],
      runtimeInMinutes: json['runtimeInMinutes'],
      budgetInMillions: json['budgetInMillions'],
      boxOfficeRevenueInMillions: Utils.toDouble(
        json['boxOfficeRevenueInMillions'],
      ),
      academyAwardNominations: json['academyAwardNominations'],
      academyAwardWins: json['academyAwardWins'],
      rottenTomatoesScore: Utils.toDouble(json['rottenTomatoesScore']),
    );
  }

  @override
  String toString() {
    return '''Movie(
    id: $id,
    name: $name,
    runtimeInMinutes: $runtimeInMinutes,
    budgetInMillions: $budgetInMillions,
    boxOfficeRevenueInMillions: $boxOfficeRevenueInMillions,
    academyAwardNominations: $academyAwardNominations,
    academyAwardWins: $academyAwardWins,
    rottenTomatoesScore: $rottenTomatoesScore,
)''';
  }
}
