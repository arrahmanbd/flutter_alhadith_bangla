import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/database/data/section/section_data.dart';
import 'package:alhadith/src/database/repository/database_repository.dart';

class SectionNotifier extends StateNotifier<List<SectionData>> {
  final DataBaseRepositiry repo;

  SectionNotifier(
    this.repo,
  ) : super([]);

  Future<List<SectionData>> getSectionInfo(int chapterID) async {
    try {
      final section = await repo.sectionByChapter(chapterID);
      state = section;
      return section;
    } catch (e) {
      Exception(e);
    }
    throw Exception(AppString.fetchError);
  }
}

final sectionProvider =
    StateNotifierProvider<SectionNotifier, List<SectionData>>((ref) {
  final repo = ref.read(databaseProvider);
  return SectionNotifier(repo);
});
