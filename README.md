# The Lord of the Rings API

This package leverages communication with [The One API](https://the-one-api.dev/), providing the user with data about
*The Lord of the Rings* (books and movies).

## Prerequisites

For most requests you will need an API access key which can be easily obtained here:
https://the-one-api.dev/sign-up

## Objects

Before making any requests create an instance of ```LotrApi``` using your API access key:

```
var lotrApi = LotrApi(
  apiKey: 'INSERT_YOUR_API_ACCESS_KEY_HERE',
);
```

*If you do not provide an API access key then you will only be able to call the /book endpoint.*

### Book

In order to retrieve data about all books:

```
Response<Book> response = await lotrApi.getBooks();
List<Book> books = response.docs;
```

*The Response holds additional information such as the total number of items.*

You can also get a specific book by providing its ID:

```
String firstBookId = books.first.id;
Book? firstBook = await lotrApi.getBook(
  id: firstBookId,
);
```

### Chapter

```
Response<Chapter> chapters = await lotrApi.getChapters();
```

### Character

```
Response<Character> response = await lotrApi.getCharacters();
```

### Movie

```
Response<Movie> response = await lotrApi.getMovies();
```

### Quote

```
Response<Quote> quotes = await lotrApi.getQuotes();

Response<Quote> quotes = await lotrApi.getCharacterQuotes(
  characterId: characterId, //TODO provide the character's ID
);

Response<Quote> quotes = await lotrApi.getMovieQuotes(
  movieId: movieId, //TODO provide the movie's ID
);
```

## Pagination

```
Response<Quote> quotes = await lotrApi.getQuotes(
  pagination: Pagination(
    limit: 10,
    offset: 2,
    page: 2,
  ),
);
```

## Sorting

```
Response<Quote> quotes = await lotrApi.getQuotes(
  sorting: QuoteSortings.byDialogAsc,
);
```

## Filtering

You may also apply multiple filters for each attribute, e.g.:

```
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

Check the [example](example) folder for more examples.

## Support

If you like this project, please support by starring the
[Github repository](https://github.com/finkmoritz/lotr_api).

In case you discover a bug or have a feature request, feel free to create an issue there.
