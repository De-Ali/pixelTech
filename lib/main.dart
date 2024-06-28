import 'package:flutter/material.dart';
import 'package:pixel_tech_assessment/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'providers/main_screen_provider.dart';
import 'presentation/screens/main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainScreenProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _appGenerateRoute = AppRoute();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              fontFamily: "Tajawal",
            ),
            locale: Locale('ar', 'AE'), // Set the locale to Arabic
            localizationsDelegates: GlobalMaterialLocalizations.delegates,
            supportedLocales: [
              Locale('ar', 'AE'),
            ],
            debugShowCheckedModeBanner: false,
            onGenerateRoute: _appGenerateRoute.onGenerateRoute,
            // initialRoute: "/MainScreen",
            home: const MainScreen(),
          );
        });
  }
}
