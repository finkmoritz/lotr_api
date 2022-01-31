import 'dart:convert';

import 'package:http/http.dart' as http;

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

  Future<List<Book>> getBooks() async {
    var json = await _getResponse('book');
    var books = json['docs'] as List;
    return books.map((b) => Book.fromJson(b)).toList();
  }

  Future<dynamic> _getResponse(
    String endpoint, {
    String? query,
  }) async {
    String url = '${_baseUrl}/${endpoint}';
    if(query != null) {
      url += '?${query}';
    }
    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Received error code ${response.statusCode} from API!');
    }
  }
}
