import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/database/data/section/section_data.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.section,
    required this.sectionID,
  });

  final SectionData section;
  final int sectionID;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontFamily: 'Kalpurush',
          fontSize: Value.normal,
          fontWeight: FontWeight.w600,
        ),
        children: <TextSpan>[
          TextSpan(
            text: '${section.number} ',
            style: const TextStyle(
              color: primary,
            ),
          ),
          if (sectionID == 1)
            TextSpan(
              text: '${section.title}',
              style: const TextStyle(
                color: greyBlack,
              ),
            ),
        ],
      ),
    );
  }
}
