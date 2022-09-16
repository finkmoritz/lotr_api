import 'package:lotr_api/lotr_api.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    throw Exception('Expected API key as first argument, but received none.');
  }

  var lotrApi = LotrApi(
    apiKey: args.first,
  );

  Response<Quote> quotes = await lotrApi.getQuotes(
    sorting: QuoteSortings.byDialogAsc,
    pagination: Pagination(
      limit: 10,
      offset: 2,
    ),
    dialogFilters: [
      MatchesRegex('Frodo'),
    ],
  );
  print(quotes);

  Quote? quote = await lotrApi.getQuote(
    id: quotes.docs.first.id,
  );
  print(quote);
}
