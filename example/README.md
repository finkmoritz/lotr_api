# The Lord of the Rings API

```dart
import 'package:lotr_api/lotr_api.dart';

void main() async {
  var lotrApi = LotrApi(
    apiKey: 'INSERT_YOUR_API_ACCESS_KEY_HERE',
  );

  var quotes = await lotrApi.getQuotes(
    pagination: Pagination(
      limit: 10,
    ),
    // https://github.com/gitfrosh/lotr-api/issues/188
    // sorting: QuoteSortings.byIdAsc,
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
