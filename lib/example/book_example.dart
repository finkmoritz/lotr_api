import 'package:the_one_api/the_one_api.dart';

void main() async {
  var theOneApi = TheOneApi();
  List<Book> books = await theOneApi.getBooks();
  books.forEach((b) => print(b));
}
