import 'package:the_one_api/the_one_api.dart';

void main() async {
  var theOneApi = TheOneApi();
  Response<Book> response = await theOneApi.getBooks();
  print(response);

  String firstBookId = response.docs.first.id;
  Book? firstBook = await theOneApi.getBook(
    id: firstBookId,
  );
  print(firstBook);

  Response<Chapter> chapters = await theOneApi.getBookChapters(
    bookId: firstBookId,
  );
  print(chapters.docs);

  Response<Book> twoBooks = await theOneApi.getBooks(
    pagination: Pagination(
      limit: 2,
      page: 1,
      offset: 1,
    ),
  );
  print(twoBooks);
}
