import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/database/data/hadith/hadith_data.dart';
import 'package:alhadith/src/database/repository/database_repository.dart';

class DetailsNotifier extends StateNotifier<List<HadithData>> {
  final DataBaseRepositiry repo;

  DetailsNotifier(
    this.repo,
  ) : super([]);

  Future<List<HadithData>> getDetails(int chapterID, int bookID) async {
    try {
      final details = await repo.getDetails(chapterID, bookID);
      state = details;
      return details;
    } catch (e) {
      Exception(e);
    }
    throw Exception(AppString.fetchError);
  }
}

final detailsProvider =
    StateNotifierProvider<DetailsNotifier, List<HadithData>>((ref) {
  final repo = ref.read(databaseProvider);
  return DetailsNotifier(repo);
});
