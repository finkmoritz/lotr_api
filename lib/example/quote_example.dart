import 'package:the_one_api/the_one_api.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    throw Exception('Expected API key as first argument, but received none.');
  }

  var theOneApi = TheOneApi(
    apiKey: args.first,
  );

  Response<Quote> quotes = await theOneApi.getQuotes();
  print(quotes);

  Quote? quote = await theOneApi.getQuote(
    id: quotes.docs.first.id,
  );
  print(quote);
}
