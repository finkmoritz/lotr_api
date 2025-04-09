import 'package:lotr_api/lotr_api.dart';

void main() async {
  var lotrApi = LotrApi();
  Response<Book> response = await lotrApi.getBooks();
  print(response);

  String firstBookId = response.docs.first.id;
  Book? firstBook = await lotrApi.getBook(id: firstBookId);
  print(firstBook);

  Response<Chapter> chapters = await lotrApi.getBookChapters(
    bookId: firstBookId,
  );
  print(chapters.docs);

  Response<Book> booksExceptFirstOne = await lotrApi.getBooks(
    pagination: Pagination(limit: 2, page: 1, offset: 1),
    sorting: BookSortings.byNameAsc,
    idFilters: [NotMatches(firstBookId)],
  );
  print(booksExceptFirstOne);
}
