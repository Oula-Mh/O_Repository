import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mypro/core/utils/app_color.dart';
import 'features/login/presentaion/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        locale: const Locale('ar'), // إجبار التطبيق يشتغل بالعربي
        supportedLocales: const [
          Locale('ar', ''), // اللغة العربية
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeData()
            .copyWith(scaffoldBackgroundColor: AppColor.backGroundColor),
        debugShowCheckedModeBanner: false,
        home: const LoginView());
  }
}
