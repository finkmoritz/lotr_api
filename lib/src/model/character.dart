import 'package:lotr_api/src/util/utils.dart';

/// Character model
class Character {
  /// Unique identifier for the character
  final String id;

  /// Name of the character
  final String name;

  /// Date of birth of the character
  final String? birth;

  /// Date of death of the character
  final String? death;

  /// Description of the character's hair
  final String? hair;

  /// Gender of the character
  final String? gender;

  /// Height of the character
  final String? height;

  /// Realm of the character
  final String? realm;

  /// Spouse of the character
  final String? spouse;

  /// Race of the character
  final String? race;

  /// URL to the character's wiki page
  final String? wikiUrl;

  /// Default constructor for the Character class
  Character({
    required this.id,
    required this.name,
    required this.birth,
    required this.death,
    required this.hair,
    required this.gender,
    required this.height,
    required this.realm,
    required this.spouse,
    required this.race,
    required this.wikiUrl,
  });

  /// Factory constructor to create a Character instance from JSON
  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['_id'],
      name: json['name'],
      birth: Utils.toNullString(json['birth']),
      death: Utils.toNullString(json['death']),
      hair: Utils.toNullString(json['hair']),
      gender: Utils.toNullString(json['gender']),
      height: Utils.toNullString(json['height']),
      realm: Utils.toNullString(json['realm']),
      spouse: Utils.toNullString(json['spouse']),
      race: Utils.toNullString(json['race']),
      wikiUrl: Utils.toNullString(json['wikiUrl']),
    );
  }

  @override
  String toString() {
    return '''Character(
    id: $id,
    name: $name,
    birth: $birth,
    death: $death,
    hair: $hair,
    gender: $gender,
    height: $height,
    realm: $realm,
    spouse: $spouse,
    race: $race,
    wikiUrl: $wikiUrl,
)''';
  }
}
