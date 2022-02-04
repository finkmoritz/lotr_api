import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lotr_api/src/query/filter/attribute_filter.dart';
import 'package:lotr_api/src/query/filter/impl/matches.dart';
import 'package:lotr_api/src/query/sorting/book/book_sorting.dart';
import 'package:lotr_api/src/query/sorting/chapter/chapter_sorting.dart';
import 'package:lotr_api/src/query/sorting/character/character_sorting.dart';
import 'package:lotr_api/src/query/sorting/movie/movie_sorting.dart';
import 'package:lotr_api/src/query/sorting/quote/quote_sorting.dart';
import 'package:lotr_api/src/query/sorting/sorting.dart';

import 'config/api_version.dart';
import 'model/book.dart';
import 'model/chapter.dart';
import 'model/character.dart';
import 'model/movie.dart';
import 'model/quote.dart';
import 'model/response.dart';
import 'query/filter/filter.dart';
import 'query/pagination/pagination.dart';

class LotrApi {
  final String? apiKey;
  final ApiVersion apiVersion;

  late final String _baseUrl;

  LotrApi({
    this.apiKey,
    this.apiVersion = ApiVersion.v2,
  }) {
    _baseUrl = "https://the-one-api.dev/v2";
  }

  Future<Response<Book>> getBooks({
    Pagination? pagination,
    BookSorting? sorting,
    List<Filter?>? idFilters,
    List<Filter?>? nameFilters,
  }) async {
    return _getResponse<Book>(
      mapping: (b) => Book.fromJson(b),
      endpoint: 'book',
      pagination: pagination,
      sorting: sorting,
      filters: [
        ..._toAttributeFilters('_id', idFilters),
        ..._toAttributeFilters('name', nameFilters),
      ],
    );
  }

  Future<Book?> getBook({
    required String id,
  }) async {
    Response<Book> books = await getBooks(
      idFilters: [
        Matches(id),
      ],
    );
    return books.docs.isNotEmpty ? books.docs.first : null;
  }

  Future<Response<Chapter>> getBookChapters({
    required String bookId,
    Pagination? pagination,
    ChapterSorting? sorting,
    List<Filter?>? idFilters,
    List<Filter?>? chapterNameFilters,
  }) async {
    return _getResponse<Chapter>(
      mapping: (c) => Chapter.fromJson(c),
      endpoint: 'book/${bookId}/chapter',
      pagination: pagination,
      sorting: sorting,
      filters: [
        ..._toAttributeFilters('_id', idFilters),
        ..._toAttributeFilters('chapterName', chapterNameFilters),
      ],
    );
  }

  Future<Response<Movie>> getMovies({
    Pagination? pagination,
    MovieSorting? sorting,
    List<Filter?>? idFilters,
    List<Filter?>? nameFilters,
    List<Filter?>? runtimeInMinutesFilters,
    List<Filter?>? budgetInMillionsFilters,
    List<Filter?>? boxOfficeRevenueInMillionsFilters,
    List<Filter?>? academyAwardNominationsFilters,
    List<Filter?>? academyAwardWinsFilters,
    List<Filter?>? rottenTomatoesScoreFilters,
  }) async {
    return _getResponse<Movie>(
      mapping: (b) => Movie.fromJson(b),
      endpoint: 'movie',
      pagination: pagination,
      sorting: sorting,
      filters: [
        ..._toAttributeFilters('_id', idFilters),
        ..._toAttributeFilters('name', nameFilters),
        ..._toAttributeFilters('runtimeInMinutes', runtimeInMinutesFilters),
        ..._toAttributeFilters('budgetInMillions', budgetInMillionsFilters),
        ..._toAttributeFilters(
            'boxOfficeRevenueInMillions', boxOfficeRevenueInMillionsFilters),
        ..._toAttributeFilters(
            'academyAwardNominations', academyAwardNominationsFilters),
        ..._toAttributeFilters('academyAwardWins', academyAwardWinsFilters),
        ..._toAttributeFilters(
            'rottenTomatoesScore', rottenTomatoesScoreFilters),
      ],
    );
  }

  Future<Movie?> getMovie({
    required String id,
  }) async {
    Response<Movie> movies = await getMovies(
      idFilters: [
        Matches(id),
      ],
    );
    return movies.docs.isNotEmpty ? movies.docs.first : null;
  }

  Future<Response<Quote>> getMovieQuotes({
    required String movieId,
    Pagination? pagination,
    QuoteSorting? sorting,
    List<Filter?>? idFilters,
    List<Filter?>? dialogFilters,
  }) async {
    return _getResponse<Quote>(
      mapping: (c) => Quote.fromJson(c),
      endpoint: 'movie/${movieId}/quote',
      pagination: pagination,
      sorting: sorting,
      filters: [
        ..._toAttributeFilters('_id', idFilters),
        ..._toAttributeFilters('dialog', dialogFilters),
      ],
    );
  }

  Future<Response<Character>> getCharacters({
    Pagination? pagination,
    CharacterSorting? sorting,
    List<Filter?>? idFilters,
    List<Filter?>? nameFilters,
    List<Filter?>? birthFilters,
    List<Filter?>? deathFilters,
    List<Filter?>? hairFilters,
    List<Filter?>? genderFilters,
    List<Filter?>? heightFilters,
    List<Filter?>? realmFilters,
    List<Filter?>? spouseFilters,
    List<Filter?>? raceFilters,
    List<Filter?>? wikiUrlFilters,
  }) async {
    return _getResponse<Character>(
      mapping: (b) => Character.fromJson(b),
      endpoint: 'character',
      pagination: pagination,
      sorting: sorting,
      filters: [
        ..._toAttributeFilters('_id', idFilters),
        ..._toAttributeFilters('name', nameFilters),
        ..._toAttributeFilters('birth', birthFilters),
        ..._toAttributeFilters('death', deathFilters),
        ..._toAttributeFilters('hair', hairFilters),
        ..._toAttributeFilters('gender', genderFilters),
        ..._toAttributeFilters('height', heightFilters),
        ..._toAttributeFilters('realm', realmFilters),
        ..._toAttributeFilters('spouse', spouseFilters),
        ..._toAttributeFilters('race', raceFilters),
        ..._toAttributeFilters('wikiUrl', wikiUrlFilters),
      ],
    );
  }

  Future<Character?> getCharacter({
    required String id,
  }) async {
    Response<Character> characters = await getCharacters(
      idFilters: [
        Matches(id),
      ],
    );
    return characters.docs.isNotEmpty ? characters.docs.first : null;
  }

  Future<Response<Quote>> getCharacterQuotes({
    required String characterId,
    Pagination? pagination,
    QuoteSorting? sorting,
    List<Filter?>? idFilters,
    List<Filter?>? dialogFilters,
  }) async {
    return _getResponse<Quote>(
      mapping: (c) => Quote.fromJson(c),
      endpoint: 'character/${characterId}/quote',
      pagination: pagination,
      sorting: sorting,
      filters: [
        ..._toAttributeFilters('_id', idFilters),
        ..._toAttributeFilters('dialog', dialogFilters),
      ],
    );
  }

  Future<Response<Quote>> getQuotes({
    Pagination? pagination,
    QuoteSorting? sorting,
    List<Filter?>? idFilters,
    List<Filter?>? dialogFilters,
  }) async {
    return _getResponse<Quote>(
      mapping: (c) => Quote.fromJson(c),
      endpoint: 'quote',
      pagination: pagination,
      sorting: sorting,
      filters: [
        ..._toAttributeFilters('_id', idFilters),
        ..._toAttributeFilters('dialog', dialogFilters),
      ],
    );
  }

  Future<Quote?> getQuote({
    required String id,
  }) async {
    Response<Quote> quotes = await getQuotes(
      idFilters: [
        Matches(id),
      ],
    );
    return quotes.docs.isNotEmpty ? quotes.docs.first : null;
  }

  Future<Response<Chapter>> getChapters({
    Pagination? pagination,
    ChapterSorting? sorting,
    List<Filter?>? idFilters,
    List<Filter?>? chapterNameFilters,
  }) async {
    return _getResponse<Chapter>(
      mapping: (c) => Chapter.fromJson(c),
      endpoint: 'chapter',
      pagination: pagination,
      sorting: sorting,
      filters: [
        ..._toAttributeFilters('_id', idFilters),
        ..._toAttributeFilters('chapterName', chapterNameFilters),
      ],
    );
  }

  Future<Chapter?> getChapter({
    required String id,
  }) async {
    Response<Chapter> chapters = await getChapters(
      idFilters: [
        Matches(id),
      ],
    );
    return chapters.docs.isNotEmpty ? chapters.docs.first : null;
  }

  List<AttributeFilter?> _toAttributeFilters(
      String attribute, List<Filter?>? filters) {
    List<AttributeFilter?>? attributeFilters =
        filters?.map((f) => AttributeFilter(attribute, f)).toList();
    return attributeFilters == null ? [] : attributeFilters;
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
      throw Exception('''Received error from API!
${response.statusCode} ${response.reasonPhrase}
for request URL ${url}''');
    }
  }
}
