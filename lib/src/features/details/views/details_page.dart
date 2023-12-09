import 'package:alhadith/src/core/core.dart';
import '../widgets/details.dart';

class DetailsPage extends StatelessWidget {
  final String name;
  final String subtitle;
  const DetailsPage({
    Key? key,
    required this.name,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                flexibleSpace: CustomAppBar(title: name, subTitle: subtitle),
                automaticallyImplyLeading: false,
                pinned: false,
                floating: true,
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
            decoration: const BoxDecoration(
              color: secondary,
              borderRadius: BorderRadius.only(
                  topLeft: Value.circle, topRight: Value.circle),
            ),
            child: const Details(),
          ),
        ),
      ),
    );
  }
}
