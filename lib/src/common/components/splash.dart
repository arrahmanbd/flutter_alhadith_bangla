import 'package:flutter/cupertino.dart';

import '../../core/core.dart';
import '../../database/helper/database_helper.dart';
import '../../features/home/controller/home_controller.dart';
import '../../features/home/views/homepage.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    super.initState();
    openConnection();
    Future.delayed(const Duration(seconds: 2)).then(
      (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              Res.splash,
              height: 120,
              width: 120,
            ),
          ),
          SizedBox(height: .05.sh),
          Consumer(
            builder: (_, WidgetRef ref, __) {
              final data = ref.watch(fetchBook);
              return data.when(
                data: (data) => const Text(AppString.app,
                    style: TextStyle(color: white, fontSize: Value.normal)),
                error: (e, s) => Text(e.toString()),
                loading: () => const CupertinoActivityIndicator(
                  color: white,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
