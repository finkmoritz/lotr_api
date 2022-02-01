import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:the_one_api/src/model/chapter.dart';
import 'package:the_one_api/src/model/response.dart';

import 'config/api_version.dart';
import 'model/book.dart';

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

  Future<Book?> getBook(String id) async {
    Response<Book> books = await getBooks(
      id: id,
    );
    return books.docs.isNotEmpty ? books.docs.first : null;
  }

  Future<Response<Chapter>> getChapters({
    required String bookId,
  }) async {
    return _getResponse<Chapter>(
      mapping: (c) => Chapter.fromJson(c),
      endpoint: 'book/${bookId}/chapter',
    );
  }

  Future<Response<T>> _getResponse<T>({
    required T Function(dynamic) mapping,
    required String endpoint,
    List<String?>? queries,
  }) async {
    String url = '${_baseUrl}/${endpoint}';
    if (queries != null) {
      url += '?';
      queries.forEach((query) => url += '${query}&');
    }
    var response = await http.get(Uri.parse(url));
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
