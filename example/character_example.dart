import 'package:lotr_api/lotr_api.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    throw Exception('Expected API key as first argument, but received none.');
  }

  var lotrApi = LotrApi(
    apiKey: args.first,
  );
  Response<Character> response = await lotrApi.getCharacters();
  print(response);

  String lastCharacterId = response.docs.last.id;
  Character? lastCharacter = await lotrApi.getCharacter(
    id: lastCharacterId,
  );
  print(lastCharacter);

  Response<Quote> quotes = await lotrApi.getCharacterQuotes(
    characterId: lastCharacterId,
  );
  print(quotes.docs);

  Response<Character> femaleHumans = await lotrApi.getCharacters(
    genderFilters: [
      Matches('Female'),
    ],
    raceFilters: [
      Matches('Human'),
    ],
  );
  print(femaleHumans);
}
