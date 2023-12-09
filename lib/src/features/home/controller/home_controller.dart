import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/database/data/books/book_database.dart';
import 'package:alhadith/src/database/repository/database_repository.dart';

class HomeNotifier extends StateNotifier<List<Book>> {
  final DataBaseRepositiry repo;
  HomeNotifier(
    this.repo,
  ) : super([]);

  Future<List<Book>> fetchBooks() async {
    try {
      final books = await repo.fetchAllBooks();
      state = books;
      return books;
    } catch (e) {
      Exception(e);
    }
    throw DataFetchException(AppString.fetchError);
  }
}

final allBookProvider = StateNotifierProvider<HomeNotifier, List<Book>>((ref) {
  final repo = ref.read(databaseProvider);
  return HomeNotifier(repo);
});

final fetchBook = FutureProvider<List<Book>>((ref) async {
  return await ref.watch(allBookProvider.notifier).fetchBooks();
});
