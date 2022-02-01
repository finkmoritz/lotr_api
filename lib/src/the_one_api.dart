import 'dart:convert';

import 'package:http/http.dart' as http;

import 'config/api_version.dart';
import 'model/book.dart';
import 'model/chapter.dart';
import 'model/movie.dart';
import 'model/quote.dart';
import 'model/response.dart';

class TheOneApi {
  final String? apiKey;
  final ApiVersion apiVersion;

  late final String _baseUrl;

  TheOneApi({
    this.apiKey,
    this.apiVersion = ApiVersion.v2,
  }) {
    _baseUrl = "https://the-one-api.dev/v2";
  }

  Future<Response<Book>> getBooks({
    String? id,
  }) async {
    return _getResponse<Book>(
      mapping: (b) => Book.fromJson(b),
      endpoint: 'book',
      queries: [
        '_id=${id ?? ''}',
      ],
    );
  }

  Future<Book?> getBook({
    required String id,
  }) async {
    Response<Book> books = await getBooks(
      id: id,
    );
    return books.docs.isNotEmpty ? books.docs.first : null;
  }

  Future<Response<Chapter>> getChapters({
    required String bookId,
    String? chapterId,
  }) async {
    return _getResponse<Chapter>(
      mapping: (c) => Chapter.fromJson(c),
      endpoint: 'book/${bookId}/chapter',
      queries: [
        '_id=${chapterId ?? ''}',
      ],
    );
  }

  Future<Response<Movie>> getMovies({
    String? id,
  }) async {
    return _getResponse<Movie>(
      mapping: (b) => Movie.fromJson(b),
      endpoint: 'movie',
      queries: [
        '_id=${id ?? ''}',
      ],
    );
  }

  Future<Movie?> getMovie({
    required String id,
  }) async {
    Response<Movie> movies = await getMovies(
      id: id,
    );
    return movies.docs.isNotEmpty ? movies.docs.first : null;
  }

  Future<Response<Quote>> getQuotes({
    required String movieId,
    String? quoteId,
  }) async {
    return _getResponse<Quote>(
      mapping: (c) => Quote.fromJson(c),
      endpoint: 'movie/${movieId}/quote',
      queries: [
        '_id=${quoteId ?? ''}',
      ],
    );
  }

  Future<Quote?> getQuote({
    required String movieId,
    required String quoteId,
  }) async {
    Response<Quote> quotes = await getQuotes(
      movieId: movieId,
      quoteId: quoteId,
    );
    return quotes.docs.isNotEmpty ? quotes.docs.first : null;
  }

  Future<Response<T>> _getResponse<T>({
    required T Function(dynamic) mapping,
    required String endpoint,
    List<String?>? queries,
  }) async {
    Map<String, String> headers = {};
    if(apiKey != null) {
      headers['Authorization'] = 'Bearer $apiKey';
    }

    String url = '${_baseUrl}/${endpoint}';
    if (queries != null) {
      url += '?';
      queries.forEach((query) => url += '${query}&');
    }

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return Response.fromJson(
        json: json,
        mapping: mapping,
      );
    } else {
      throw Exception('Received error code ${response.statusCode} from API!');
    }
  }
}
