import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:the_one_api/src/query/filter/academy_award_nominations_filter.dart';
import 'package:the_one_api/src/query/filter/academy_award_wins_filter.dart';
import 'package:the_one_api/src/query/filter/birth_filter.dart';
import 'package:the_one_api/src/query/filter/box_office_revenue_in_millions_filter.dart';
import 'package:the_one_api/src/query/filter/budget_in_millions_filter.dart';
import 'package:the_one_api/src/query/filter/chapter_name_filter.dart';
import 'package:the_one_api/src/query/filter/death_filter.dart';
import 'package:the_one_api/src/query/filter/dialog_filter.dart';
import 'package:the_one_api/src/query/filter/gender_filter.dart';
import 'package:the_one_api/src/query/filter/hair_filter.dart';
import 'package:the_one_api/src/query/filter/height_filter.dart';
import 'package:the_one_api/src/query/filter/id_filter.dart';
import 'package:the_one_api/src/query/filter/name_filter.dart';
import 'package:the_one_api/src/query/filter/race_filter.dart';
import 'package:the_one_api/src/query/filter/realm_filter.dart';
import 'package:the_one_api/src/query/filter/rotten_tomatoes_score_filter.dart';
import 'package:the_one_api/src/query/filter/runtime_in_minutes_filter.dart';
import 'package:the_one_api/src/query/filter/spouse_filter.dart';
import 'package:the_one_api/src/query/filter/wiki_url_filter.dart';
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
    IdFilter? idFilter,
    NameFilter? nameFilter,
  }) async {
    return _getResponse<Book>(
      mapping: (b) => Book.fromJson(b),
      endpoint: 'book',
      pagination: pagination,
      sorting: sorting,
      filters: [
        idFilter,
        nameFilter,
      ],
    );
  }

  Future<Book?> getBook({
    required String id,
  }) async {
    Response<Book> books = await getBooks(
      idFilter: IdFilter()..matches = id,
    );
    return books.docs.isNotEmpty ? books.docs.first : null;
  }

  Future<Response<Chapter>> getBookChapters({
    required String bookId,
    Pagination? pagination,
    ChapterSorting? sorting,
    IdFilter? idFilter,
    ChapterNameFilter? chapterNameFilter,
  }) async {
    return _getResponse<Chapter>(
      mapping: (c) => Chapter.fromJson(c),
      endpoint: 'book/${bookId}/chapter',
      pagination: pagination,
      sorting: sorting,
      filters: [
        idFilter,
        chapterNameFilter,
      ],
    );
  }

  Future<Response<Movie>> getMovies({
    Pagination? pagination,
    MovieSorting? sorting,
    IdFilter? idFilter,
    NameFilter? nameFilter,
    RuntimeInMinutesFilter? runtimeInMinutesFilter,
    BudgetInMillionsFilter? budgetInMillionsFilter,
    BoxOfficeRevenueInMillionsFilter? boxOfficeRevenueInMillionsFilter,
    AcademyAwardNominationsFilter? academyAwardNominationsFilter,
    AcademyAwardWinsFilter? academyAwardWinsFilter,
    RottenTomatoesScoreFilter? rottenTomatoesScoreFilter,
  }) async {
    return _getResponse<Movie>(
      mapping: (b) => Movie.fromJson(b),
      endpoint: 'movie',
      pagination: pagination,
      sorting: sorting,
      filters: [
        idFilter,
        nameFilter,
        runtimeInMinutesFilter,
        budgetInMillionsFilter,
        boxOfficeRevenueInMillionsFilter,
        academyAwardNominationsFilter,
        academyAwardWinsFilter,
        rottenTomatoesScoreFilter,
      ],
    );
  }

  Future<Movie?> getMovie({
    required String id,
  }) async {
    Response<Movie> movies = await getMovies(
      idFilter: IdFilter()..matches = id,
    );
    return movies.docs.isNotEmpty ? movies.docs.first : null;
  }

  Future<Response<Quote>> getMovieQuotes({
    required String movieId,
    Pagination? pagination,
    QuoteSorting? sorting,
    IdFilter? idFilter,
    DialogFilter? dialogFilter,
  }) async {
    return _getResponse<Quote>(
      mapping: (c) => Quote.fromJson(c),
      endpoint: 'movie/${movieId}/quote',
      pagination: pagination,
      sorting: sorting,
      filters: [
        idFilter,
        dialogFilter,
      ],
    );
  }

  Future<Response<Character>> getCharacters({
    Pagination? pagination,
    CharacterSorting? sorting,
    IdFilter? idFilter,
    NameFilter? nameFilter,
    BirthFilter? birthFilter,
    DeathFilter? deathFilter,
    HairFilter? hairFilter,
    GenderFilter? genderFilter,
    HeightFilter? heightFilter,
    RealmFilter? realmFilter,
    SpouseFilter? spouseFilter,
    RaceFilter? raceFilter,
    WikiUrlFilter? wikiUrlFilter,
  }) async {
    return _getResponse<Character>(
      mapping: (b) => Character.fromJson(b),
      endpoint: 'character',
      pagination: pagination,
      sorting: sorting,
      filters: [
        idFilter,
        nameFilter,
        birthFilter,
        deathFilter,
        hairFilter,
        genderFilter,
        heightFilter,
        realmFilter,
        spouseFilter,
        raceFilter,
        wikiUrlFilter,
      ],
    );
  }

  Future<Character?> getCharacter({
    required String id,
  }) async {
    Response<Character> characters = await getCharacters(
      idFilter: IdFilter()..matches = id,
    );
    return characters.docs.isNotEmpty ? characters.docs.first : null;
  }

  Future<Response<Quote>> getCharacterQuotes({
    required String characterId,
    Pagination? pagination,
    QuoteSorting? sorting,
    IdFilter? idFilter,
    DialogFilter? dialogFilter,
  }) async {
    return _getResponse<Quote>(
      mapping: (c) => Quote.fromJson(c),
      endpoint: 'character/${characterId}/quote',
      pagination: pagination,
      sorting: sorting,
      filters: [
        idFilter,
        dialogFilter,
      ],
    );
  }

  Future<Response<Quote>> getQuotes({
    Pagination? pagination,
    QuoteSorting? sorting,
    IdFilter? idFilter,
    DialogFilter? dialogFilter,
  }) async {
    return _getResponse<Quote>(
      mapping: (c) => Quote.fromJson(c),
      endpoint: 'quote',
      pagination: pagination,
      sorting: sorting,
      filters: [
        idFilter,
        dialogFilter,
      ],
    );
  }

  Future<Quote?> getQuote({
    required String id,
  }) async {
    Response<Quote> quotes = await getQuotes(
      idFilter: IdFilter()..matches = id,
    );
    return quotes.docs.isNotEmpty ? quotes.docs.first : null;
  }

  Future<Response<Chapter>> getChapters({
    Pagination? pagination,
    ChapterSorting? sorting,
    IdFilter? idFilter,
    ChapterNameFilter? chapterNameFilter,
  }) async {
    return _getResponse<Chapter>(
      mapping: (c) => Chapter.fromJson(c),
      endpoint: 'chapter',
      pagination: pagination,
      sorting: sorting,
      filters: [
        idFilter,
        chapterNameFilter,
      ],
    );
  }

  Future<Chapter?> getChapter({
    required String id,
  }) async {
    Response<Chapter> chapters = await getChapters(
      idFilter: IdFilter()..matches = id,
    );
    return chapters.docs.isNotEmpty ? chapters.docs.first : null;
  }

  Future<Response<T>> _getResponse<T>({
    required T Function(dynamic) mapping,
    required String endpoint,
    Pagination? pagination,
    Sorting? sorting,
    List<Filter?> filters = const [],
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
