import 'package:the_one_api/the_one_api.dart';

void main() async {
  var theOneApi = TheOneApi();
  Response<Book> response = await theOneApi.getBooks();
  print(response);

  String firstBookId = response.docs.first.id;
  Book? firstBook = await theOneApi.getBook(firstBookId);
  print(firstBook);
}
