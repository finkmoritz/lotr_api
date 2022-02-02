import 'package:the_one_api/src/util/Utils.dart';

class Character {
  final String id;
  final String name;
  final String? birth;
  final String? death;
  final String? hair;
  final String? gender;
  final String? height;
  final String? realm;
  final String? spouse;
  final String? race;
  final String? wikiUrl;

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
