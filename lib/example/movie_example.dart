import 'package:the_one_api/the_one_api.dart';

void main(List<String> args) async {
  if(args.isEmpty) {
    throw Exception('Expected API key as last argument, but received none.');
  }

  var theOneApi = TheOneApi(
    apiKey: args.first,
  );
  Response<Movie> response = await theOneApi.getMovies();
  print(response);

  String lastMovieId = response.docs.last.id;
  Movie? lastMovie = await theOneApi.getMovie(
    id: lastMovieId,
  );
  print(lastMovie);

  Response<Quote> quotes = await theOneApi.getQuotes(
    movieId: lastMovieId,
  );
  print(quotes.docs);
}
