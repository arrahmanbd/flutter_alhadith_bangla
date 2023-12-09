import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/database/data/chapters/chapter_data.dart';
import 'package:alhadith/src/database/repository/database_repository.dart';

class ChapterNotifier extends StateNotifier<List<ChapterData>> {
  final DataBaseRepositiry repo;
  ChapterNotifier(
    this.repo,
  ) : super([]);

  Future<List<ChapterData>> fetchChapter(int bookID) async {
    try {
      final books = await repo.fetchbyBook(bookID);
      state = books;
      return books;
    } catch (e) {
      Exception(e);
    }
    throw Exception(AppString.fetchError);
  }
}

final chapterProvider =
    StateNotifierProvider<ChapterNotifier, List<ChapterData>>((ref) {
  final repo = ref.read(databaseProvider);
  return ChapterNotifier(repo);
});
