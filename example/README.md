# The Lord of the Rings API

```
import 'package:lotr_api/lotr_api.dart';

void main() async {
  var lotrApi = LotrApi(
    apiKey: 'INSERT_YOUR_API_ACCESS_KEY_HERE',
  );

  var quotes = await lotrApi.getQuotes(
    pagination: Pagination(
      limit: 10,
    ),
    sorting: QuoteSortings.byIdAsc,
    idFilters: [
      Exists(),
    ],
    dialogFilters: [
      MatchesRegex('Saruman'),
    ],
  );

  print(quotes.docs);
}
```
