import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/database/data/hadith/hadith_data.dart';
import 'package:alhadith/src/features/details/controller/details_controller.dart';

import '../components/hadish_info.dart';
import 'section.dart';

class Details extends ConsumerWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final details = ref.watch(detailsProvider);
    if (details.isEmpty) return const Text('');
    return ListView.builder(
      shrinkWrap: true,
      itemCount: details.length,
      itemBuilder: (BuildContext context, int index) {
        final HadithData hadis = details[index];
        return Container(
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 1.sw,
                child: SectionInfo(sectionID: hadis.section_id),
              ),
              const SizedBox(height: 14.0),
              HadisInfoCard(
                hadis: hadis,
              )
            ],
          ),
        );
      },
    );
  }
}
