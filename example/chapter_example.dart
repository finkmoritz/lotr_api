import 'package:lotr_api/lotr_api.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    throw Exception('Expected API key as first argument, but received none.');
  }

  var lotrApi = LotrApi(apiKey: args.first);

  Response<Chapter> chapters = await lotrApi.getChapters(
    // https://github.com/gitfrosh/lotr-api/issues/188
    // sorting: ChapterSortings.byChapterNameAsc,
  );
  print(chapters);

  Chapter? chapter = await lotrApi.getChapter(id: chapters.docs.first.id);
  print(chapter);
}
