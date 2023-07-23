import 'package:flutter/material.dart';
import 'package:astrtwig/astroworld/view/astro_world.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:astrtwig/astroworld/view/profile/view/profile.dart';
// import 'package:get/get.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) => const MyApp(), // Wrap your app
      // ),
      //SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      const MyApp(),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 800),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp(
              useInheritedMediaQuery: true,
              // locale: DevicePreview.locale(context),
              // builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              title: 'Astrotwig',
              themeMode: ThemeMode.system,
              theme: ThemeData.light().copyWith(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                textTheme: ThemeData.dark().textTheme.apply(
                  fontFamily: 'Kanit',
                ),
              ),
              darkTheme: ThemeData.dark().copyWith(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                textTheme: ThemeData.dark().textTheme.apply(
                  fontFamily: 'Kanit',
                ),
              ),
              home: const AstroWorld(),
              routes: {
                ProfilePage.routeName: (ctx) => ProfilePage(),
          });
        });
  }
}

