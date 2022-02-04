# The One API

```
  var theOneApi = TheOneApi(
    apiKey: 'INSERT_YOUR_API_ACCESS_KEY_HERE',
  );

  Response<Quote> quotes = await theOneApi.getQuotes(
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
```
