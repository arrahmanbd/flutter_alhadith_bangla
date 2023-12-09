import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/database/data/section/section_data.dart';
import 'package:alhadith/src/features/details/controller/section_provider.dart';

import '../components/section_title.dart';

class SectionInfo extends ConsumerWidget {
  final int sectionID;

  const SectionInfo({super.key, required this.sectionID});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(sectionProvider);
    if (data.isEmpty) const Text('');
    final SectionData section = data[sectionID - 1];
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(section: section, sectionID: sectionID),
          if (section.preface!.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 10),
              height: 1,
              color: secondary,
            ),
          if (section.preface!.isNotEmpty)
            GlobalText(
              text: '${section.preface}',
              ar: false,
              color: greyBlack,
            )
        ],
      ),
    );
  }
}
