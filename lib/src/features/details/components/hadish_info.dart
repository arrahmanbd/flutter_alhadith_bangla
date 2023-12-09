import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/database/data/hadith/hadith_data.dart';
import 'package:alhadith/src/features/details/components/hadis_header.dart';

class HadisInfoCard extends StatelessWidget {
  final HadithData hadis;
  const HadisInfoCard({
    Key? key,
    required this.hadis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          CardHeader(hadis: hadis),
          const SizedBox(height: 33.0),
          GlobalText(
            text: hadis.ar,
            ar: true,
            color: black,
          ),
          const SizedBox(height: 20.0),
          GlobalText(
            text: '${hadis.narrator}${AppString.narrator}',
            ar: false,
            color: primary,
          ),
          const SizedBox(height: 10.0),
          GlobalText(
            text: hadis.bn,
            ar: false,
            color: black,
          ),
          if (hadis.note!.isNotEmpty)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: GlobalText(
                text: AppString.footNote,
                color: greyBlack,
                ar: false,
                size: Value.normal,
              ),
            ),
          GlobalText(
            text: hadis.note.toString(),
            color: greyBlack,
            ar: false,
            size: Value.normal,
          )
        ],
      ),
    );
  }
}
