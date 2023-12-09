import 'package:alhadith/src/common/components/splash.dart';
import 'package:alhadith/src/core/core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Value.design,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppString.app,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: primary),
              useMaterial3: true,
              fontFamily: AppString.defaultFont),
          home: const SplashView(),
        );
      },
    );
  }
}
