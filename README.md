# The Lord of the Rings API

This package facilitates communication with [The One API](https://the-one-api.dev/), providing the user with data about
*The Lord of the Rings*:

* Books
* Chapters
* Characters
* Movies
* Quotes

The respective requests may be further specified by providing:

* Pagination
* Sorting
* Filters

## Prerequisites

For most requests you will need an API access key which can be easily obtained here:
https://the-one-api.dev/sign-up

## Objects

Before making any requests create an instance of ```LotrApi``` using your API access key:

```dart
var lotrApi = LotrApi(
  apiKey: 'INSERT_YOUR_API_ACCESS_KEY_HERE',
);
```

*If you do not provide an API access key then you will only be able to call the /book endpoint.*

### Book

In order to retrieve data about all books:

```dart
Response<Book> response = await lotrApi.getBooks();
```

The actual list of items is always stored in the ```docs``` attribute:

```dart
List<Book> books = response.docs;
```

*The Response holds additional information such as the total number of items.*

You can also directly get a specific book by providing its ID:

```dart
String firstBookId = books.first.id;
Book? firstBook = await lotrApi.getBook(
  id: firstBookId,
);
```

### Chapter

```dart
Response<Chapter> chapters = await lotrApi.getChapters();
```

### Character

```dart
Response<Character> response = await lotrApi.getCharacters();
```

### Movie

```dart
Response<Movie> response = await lotrApi.getMovies();
```

### Quote

```dart
Response<Quote> quotes = await lotrApi.getQuotes();

Response<Quote> quotes = await lotrApi.getCharacterQuotes(
  characterId: characterId, //TODO provide the character's ID
);

Response<Quote> quotes = await lotrApi.getMovieQuotes(
  movieId: movieId, //TODO provide the movie's ID
);
```

## Pagination

```dart
Response<Quote> quotes = await lotrApi.getQuotes(
  pagination: Pagination(
    limit: 10,
    offset: 2,
    page: 2,
  ),
);
```

## Sorting

```dart
Response<Quote> quotes = await lotrApi.getQuotes(
  sorting: QuoteSortings.byDialogAsc,
);
```

## Filtering

You may also apply multiple filters for each attribute, e.g.:

```dart
Response<Movie> response = await lotrApi.getMovies(
  nameFilters: [
    Exists(),
  ],
  budgetInMillionsFilters: [
    GreaterThanOrEquals(100),
    LessThan(250),
  ],
);
```

Available filters are:

* `Matches` / `NotMatches`
* `Includes` / `Excludes`
* `Exists` / `NotExists`
* `MatchesRegex` / `NotMatchesRegex`
* `Equals` / `NotEquals`
* `LessThan` / `GreaterThan`
* `LessThanOrEquals` / `GreaterThanOrEquals`

## Examples

Check the [example folder](example) or even the [Example Flutter App](https://github.com/finkmoritz/the_one_app)
for more examples.

## Support

If you like this project, please support by starring the
[Github repository](https://github.com/finkmoritz/lotr_api).

In case you discover a bug or have a feature request, feel free to create an issue there.
