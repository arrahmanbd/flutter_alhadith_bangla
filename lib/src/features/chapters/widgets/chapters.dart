import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/database/data/chapters/chapter_data.dart';
import 'package:alhadith/src/features/chapters/controllers/chapter_controller.dart';
import 'package:alhadith/src/features/details/controller/details_controller.dart';
import 'package:alhadith/src/features/details/controller/section_provider.dart';
import 'package:alhadith/src/features/details/views/details_page.dart';
import 'package:flutter/cupertino.dart';

class Chapters extends ConsumerWidget {
  final String subName;
  const Chapters({
    super.key,
    required this.subName,
  });
  Future<void> fetchDetails(
      WidgetRef ref, BuildContext context, ChapterData chap) async {
    await ref.read(sectionProvider.notifier).getSectionInfo(chap.chapter_id);
    await ref
        .read(detailsProvider.notifier)
        .getDetails(chap.chapter_id, chap.book_id)
        .then(
      (value) {
        return Navigator.of(context, rootNavigator: true).push(
          CupertinoPageRoute<bool>(
            fullscreenDialog: true,
            builder: (BuildContext context) =>
                DetailsPage(name: subName, subtitle: chap.title),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapters = ref.watch(chapterProvider);
    if (chapters.isEmpty) const Text('No item Found');
    return ListView.builder(
      shrinkWrap: true,
      itemCount: chapters.length,
      itemBuilder: (BuildContext context, int index) {
        ChapterData chap = chapters[index];
        return ListItemCard(
          title: chap.title,
          poly: chap.chapter_id.toString(),
          subtitle: '${AppString.range}${chap.hadis_range}',
          fun: () => fetchDetails(ref, context, chap),
        );
      },
    );
  }
}
