import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:henryportfolio/bindings/portfolioBindings.dart';
import 'package:henryportfolio/utils/router/auto_router.dart';

import 'constant/appTheme.dart';
import 'controller/themeController.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  AppRouter appRouter = AppRouter();
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp.router(
            // routerConfig: appRouter.config(),
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
            initialBinding: PortfolioBindings(),
            theme: Themes.darkTheme,
            // darkTheme: Themes.darkTheme,
            // themeMode: themeController.theme,
            title: 'Portfolio',
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
