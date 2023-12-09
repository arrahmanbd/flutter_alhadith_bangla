import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/database/data/books/book_database.dart';
import 'package:alhadith/src/features/chapters/controllers/chapter_controller.dart';
import 'package:alhadith/src/features/home/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import '../../chapters/views/chapter_page.dart';

class HomeItem extends ConsumerWidget {
  const HomeItem({super.key});
  Future<void> fetchChapter(
      WidgetRef ref, BuildContext context, Book book) async {
    await ref.read(chapterProvider.notifier).fetchChapter(book.id).then(
      (value) {
        return Navigator.of(context, rootNavigator: true).push(
          CupertinoPageRoute<bool>(
            fullscreenDialog: true,
            builder: (BuildContext context) => ChapterPage(
              name: book.title,
              count: book.number_of_hadis.toString(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(fetchBook);
    return books.when(
      data: (bookList) {
        return ListView.builder(
          itemCount: bookList.length,
          itemBuilder: (BuildContext context, int index) {
            Book book = bookList[index];
            return ListItemCard(
              title: book.title,
              subtitle: '${book.number_of_hadis}${AppString.countHadith}',
              poly: book.abvr_code,
              fun: () => fetchChapter(ref, context, book),
            );
          },
        );
      },
      error: (err, stack) => Center(child: Text('Error: $err')),
      loading: () => const Center(
        child: CupertinoActivityIndicator(
          color: primary,
        ),
      ),
    );
  }
}
