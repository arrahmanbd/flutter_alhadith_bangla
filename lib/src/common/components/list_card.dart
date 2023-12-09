import '../../core/core.dart';
import '../widgets/polygon.dart';

class ListItemCard extends StatelessWidget {
  const ListItemCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.poly,
    required this.fun,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String poly;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(Value.padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: white,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        tileColor: white,
        onTap: fun,
        leading: PolyGonWidget(
          title: poly,
        ),
        title: GlobalText(text: title, ar: false, weight: Value.boldFont),
        subtitle: GlobalText(
          text: subtitle,
          ar: false,
          weight: Value.lightFont,
        ),
      ),
    );
  }
}
