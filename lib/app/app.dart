import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../config/routing/routes_manager.dart';
import '../config/theme/app_theme.dart';
import '../config/transtation/translation.dart';
import 'main_bindings.dart';

class JeuThemes extends StatelessWidget {
  const JeuThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          locale: Get.deviceLocale,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          initialBinding: MainBinding(),
          translations: Translation(),

          // home: SplashView(),
          getPages: RoutesManager.routes,
          initialRoute: RoutesManager.getSplashScreen(),
        );
      },
    );
  }
}
