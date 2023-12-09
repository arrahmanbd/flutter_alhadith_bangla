import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/common/components/bottom_sheet.dart';
import 'package:alhadith/src/common/widgets/polygon.dart';
import 'package:alhadith/src/database/data/hadith/hadith_data.dart';

class CardHeader extends StatelessWidget {
  final HadithData hadis;
  const CardHeader({
    Key? key,
    required this.hadis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const PolyGonWidget(title: 'B'),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GlobalText(
            text: hadis.book_name,
            ar: false,
            size: Value.normal,
            color: black,
            weight: Value.boldFont,
          ),
          const SizedBox(height: 0.5),
          GlobalText(
            text: 'হাদিসঃ ${hadis.hadith_id.toString()}',
            ar: false,
            size: Value.normal,
            color: primary,
            weight: Value.boldFont,
          ),
        ],
      ),
      trailing: SizedBox(
        width: .32.sw,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: primary,
              ),
              child: GlobalText(
                text: hadis.grade.toString(),
                ar: false,
                size: Value.small,
                color: white,
              ),
            ),
            SizedBox(width: .035.sw),
            InkWell(
                onTap: () {
                  BottomShetService.showSheet(context);
                },
                child: const Icon(
                  Icons.more_vert_outlined,
                  color: disable,
                )),
          ],
        ),
      ),
    );
  }
}
