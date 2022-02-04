import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:the_one_api/src/query/filter/attribute_filter.dart';
import 'package:the_one_api/src/query/filter/impl/matches.dart';
import 'package:the_one_api/src/query/sorting/book/book_sorting.dart';
import 'package:the_one_api/src/query/sorting/chapter/chapter_sorting.dart';
import 'package:the_one_api/src/query/sorting/character/character_sorting.dart';
import 'package:the_one_api/src/query/sorting/movie/movie_sorting.dart';
import 'package:the_one_api/src/query/sorting/quote/quote_sorting.dart';
import 'package:the_one_api/src/query/sorting/sorting.dart';

import 'config/api_version.dart';
import 'model/book.dart';
import 'model/chapter.dart';
import 'model/character.dart';
import 'model/movie.dart';
import 'model/quote.dart';
import 'model/response.dart';
import 'query/filter/filter.dart';
import 'query/pagination/pagination.dart';

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
    Pagination? pagination,
    BookSorting? sorting,
    Filter? idFilter,
    Filter? nameFilter,
  }) async {
    return _getResponse<Book>(
      mapping: (b) => Book.fromJson(b),
      endpoint: 'book',
      pagination: pagination,
      sorting: sorting,
      filters: [
        AttributeFilter('_id', idFilter),
        AttributeFilter('name', nameFilter),
      ],
    );
  }

  Future<Book?> getBook({
    required String id,
  }) async {
    Response<Book> books = await getBooks(
      idFilter: Matches(id),
    );
    return books.docs.isNotEmpty ? books.docs.first : null;
  }

  Future<Response<Chapter>> getBookChapters({
    required String bookId,
    Pagination? pagination,
    ChapterSorting? sorting,
    Filter? idFilter,
    Filter? chapterNameFilter,
  }) async {
    return _getResponse<Chapter>(
      mapping: (c) => Chapter.fromJson(c),
      endpoint: 'book/${bookId}/chapter',
      pagination: pagination,
      sorting: sorting,
      filters: [
        AttributeFilter('_id', idFilter),
        AttributeFilter('chapterName', idFilter),
      ],
    );
  }

  Future<Response<Movie>> getMovies({
    Pagination? pagination,
    MovieSorting? sorting,
    Filter? idFilter,
    Filter? nameFilter,
    Filter? runtimeInMinutesFilter,
    Filter? budgetInMillionsFilter,
    Filter? boxOfficeRevenueInMillionsFilter,
    Filter? academyAwardNominationsFilter,
    Filter? academyAwardWinsFilter,
    Filter? rottenTomatoesScoreFilter,
  }) async {
    return _getResponse<Movie>(
      mapping: (b) => Movie.fromJson(b),
      endpoint: 'movie',
      pagination: pagination,
      sorting: sorting,
      filters: [
        AttributeFilter('_id', idFilter),
        AttributeFilter('name', idFilter),
        AttributeFilter('runtimeInMinutesFilter', idFilter),
        AttributeFilter('budgetInMillionsFilter', idFilter),
        AttributeFilter('boxOfficeRevenueInMillionsFilter', idFilter),
        AttributeFilter('academyAwardNominationsFilter', idFilter),
        AttributeFilter('academyAwardWinsFilter', idFilter),
        AttributeFilter('rottenTomatoesScoreFilter', idFilter),
      ],
    );
  }

  Future<Movie?> getMovie({
    required String id,
  }) async {
    Response<Movie> movies = await getMovies(
      idFilter: Matches(id),
    );
    return movies.docs.isNotEmpty ? movies.docs.first : null;
  }

  Future<Response<Quote>> getMovieQuotes({
    required String movieId,
    Pagination? pagination,
    QuoteSorting? sorting,
    Filter? idFilter,
    Filter? dialogFilter,
  }) async {
    return _getResponse<Quote>(
      mapping: (c) => Quote.fromJson(c),
      endpoint: 'movie/${movieId}/quote',
      pagination: pagination,
      sorting: sorting,
      filters: [
        AttributeFilter('_id', idFilter),
        AttributeFilter('dialogFilter', idFilter),
      ],
    );
  }

  Future<Response<Character>> getCharacters({
    Pagination? pagination,
    CharacterSorting? sorting,
    Filter? idFilter,
    Filter? nameFilter,
    Filter? birthFilter,
    Filter? deathFilter,
    Filter? hairFilter,
    Filter? genderFilter,
    Filter? heightFilter,
    Filter? realmFilter,
    Filter? spouseFilter,
    Filter? raceFilter,
    Filter? wikiUrlFilter,
  }) async {
    return _getResponse<Character>(
      mapping: (b) => Character.fromJson(b),
      endpoint: 'character',
      pagination: pagination,
      sorting: sorting,
      filters: [
        AttributeFilter('_id', idFilter),
        AttributeFilter('nameFilter', idFilter),
        AttributeFilter('birthFilter', idFilter),
        AttributeFilter('deathFilter', idFilter),
        AttributeFilter('hairFilter', idFilter),
        AttributeFilter('genderFilter', idFilter),
        AttributeFilter('heightFilter', idFilter),
        AttributeFilter('realmFilter', idFilter),
        AttributeFilter('spouseFilter', idFilter),
        AttributeFilter('raceFilter', idFilter),
        AttributeFilter('wikiUrlFilter', idFilter),
      ],
    );
  }

  Future<Character?> getCharacter({
    required String id,
  }) async {
    Response<Character> characters = await getCharacters(
      idFilter: Matches(id),
    );
    return characters.docs.isNotEmpty ? characters.docs.first : null;
  }

  Future<Response<Quote>> getCharacterQuotes({
    required String characterId,
    Pagination? pagination,
    QuoteSorting? sorting,
    Filter? idFilter,
    Filter? dialogFilter,
  }) async {
    return _getResponse<Quote>(
      mapping: (c) => Quote.fromJson(c),
      endpoint: 'character/${characterId}/quote',
      pagination: pagination,
      sorting: sorting,
      filters: [
        AttributeFilter('_id', idFilter),
        AttributeFilter('dialogFilter', idFilter),
      ],
    );
  }

  Future<Response<Quote>> getQuotes({
    Pagination? pagination,
    QuoteSorting? sorting,
    Filter? idFilter,
    Filter? dialogFilter,
  }) async {
    return _getResponse<Quote>(
      mapping: (c) => Quote.fromJson(c),
      endpoint: 'quote',
      pagination: pagination,
      sorting: sorting,
      filters: [
        AttributeFilter('_id', idFilter),
        AttributeFilter('dialogFilter', idFilter),
      ],
    );
  }

  Future<Quote?> getQuote({
    required String id,
  }) async {
    Response<Quote> quotes = await getQuotes(
      idFilter: Matches(id),
    );
    return quotes.docs.isNotEmpty ? quotes.docs.first : null;
  }

  Future<Response<Chapter>> getChapters({
    Pagination? pagination,
    ChapterSorting? sorting,
    Filter? idFilter,
    Filter? chapterNameFilter,
  }) async {
    return _getResponse<Chapter>(
      mapping: (c) => Chapter.fromJson(c),
      endpoint: 'chapter',
      pagination: pagination,
      sorting: sorting,
      filters: [
        AttributeFilter('_id', idFilter),
        AttributeFilter('chapterNameFilter', idFilter),
      ],
    );
  }

  Future<Chapter?> getChapter({
    required String id,
  }) async {
    Response<Chapter> chapters = await getChapters(
      idFilter: Matches(id),
    );
    return chapters.docs.isNotEmpty ? chapters.docs.first : null;
  }

  Future<Response<T>> _getResponse<T>({
    required T Function(dynamic) mapping,
    required String endpoint,
    Pagination? pagination,
    Sorting? sorting,
    List<AttributeFilter?> filters = const [],
  }) async {
    Map<String, String> headers = {};
    if (apiKey != null) {
      headers['Authorization'] = 'Bearer $apiKey';
    }

    String url = '${_baseUrl}/${endpoint}?';

    pagination?.getQueries().forEach((query) => url += '${query}&');
    sorting?.getQueries().forEach((query) => url += '${query}&');
    filters.forEach((filter) {
      filter?.getQueries().forEach((query) => url += '${query}&');
    });

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
