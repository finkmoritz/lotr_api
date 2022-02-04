import 'package:lotr_api/lotr_api.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    throw Exception('Expected API key as first argument, but received none.');
  }

  var lotrApi = LotrApi(
    apiKey: args.first,
  );
  Response<Movie> response = await lotrApi.getMovies(
    nameFilters: [
      Exists(),
    ],
    budgetInMillionsFilters: [
      GreaterThanOrEquals(100),
      LessThan(250),
    ],
    sorting: MovieSortings.byAcademyAwardWinsDesc,
  );
  print(response);

  String lastMovieId = response.docs.last.id;
  Movie? lastMovie = await lotrApi.getMovie(
    id: lastMovieId,
  );
  print(lastMovie);

  Response<Quote> quotes = await lotrApi.getMovieQuotes(
    movieId: lastMovieId,
  );
  print(quotes.docs);
}
