import 'dart:convert';

import 'package:http/http.dart' as http;

import 'config/api_version.dart';
import 'model/book.dart';

class TheOneApi {
  final String apiKey;
  final ApiVersion apiVersion;

  late final String _baseUrl;

  TheOneApi({
    required this.apiKey,
    this.apiVersion = ApiVersion.v2,
  }) {
    _baseUrl = "https://the-one-api.dev/v2";
  }

  Future<List<Book>> getBooks() async {
    var response = await http.get(Uri.parse('${_baseUrl}/book'));
    if(response.statusCode == 200) {
      var books = jsonDecode(response.body) as List;
      return books.map((b) => Book.fromJson(b)).toList();
    } else {
      throw Exception('Received error code ${response.statusCode} from API!');
    }
  }
}
