import 'package:alhadith/src/core/core.dart';
import 'package:alhadith/src/features/home/widget/home_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: const CustomAppBar(
        title: 'আল-হাদিস',
        subTitle: '',
        arrow: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Value.circle, topRight: Value.circle),
            color: secondary),
        child: const HomeItem(),
      ),
    );
  }
}
