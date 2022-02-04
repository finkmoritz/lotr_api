import 'package:the_one_api/the_one_api.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    throw Exception('Expected API key as first argument, but received none.');
  }

  var theOneApi = TheOneApi(
    apiKey: args.first,
  );

  Response<Chapter> chapters = await theOneApi.getChapters(
    sorting: ChapterSortings.byChapterNameAsc,
  );
  print(chapters);

  Chapter? chapter = await theOneApi.getChapter(
    id: chapters.docs.first.id,
  );
  print(chapter);
}
