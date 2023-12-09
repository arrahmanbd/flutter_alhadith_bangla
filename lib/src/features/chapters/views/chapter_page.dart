import 'package:alhadith/src/common/components/search_bar.dart';
import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/features/chapters/widgets/chapters.dart';

class ChapterPage extends ConsumerWidget {
  final String name;
  final String count;
  const ChapterPage({
    super.key,
    required this.name,
    required this.count,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: primary,
      appBar: CustomAppBar(title: name, subTitle: count),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        decoration: const BoxDecoration(
          borderRadius:
              BorderRadius.only(topLeft: Value.circle, topRight: Value.circle),
          color: secondary,
        ),
        child: Column(
          children: [
            const SearchForm(),
            Expanded(
              child: Chapters(
                subName: name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
