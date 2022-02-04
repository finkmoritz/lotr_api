import 'package:the_one_api/the_one_api.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    throw Exception('Expected API key as first argument, but received none.');
  }

  var theOneApi = TheOneApi(
    apiKey: args.first,
  );
  Response<Character> response = await theOneApi.getCharacters();
  print(response);

  String lastCharacterId = response.docs.last.id;
  Character? lastCharacter = await theOneApi.getCharacter(
    id: lastCharacterId,
  );
  print(lastCharacter);

  Response<Quote> quotes = await theOneApi.getCharacterQuotes(
    characterId: lastCharacterId,
  );
  print(quotes.docs);

  Response<Character> femaleHumans = await theOneApi.getCharacters(
    genderFilters: [
      Matches('Female'),
    ],
    raceFilters: [
      Matches('Human'),
    ],
  );
  print(femaleHumans);
}
