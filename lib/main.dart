// ignore_for_file: prefer_const_constructors
import 'package:cripto_currency_app/modules/splash_screen/bindings/splashscreen_binding.dart';
import 'package:cripto_currency_app/modules/splash_screen/views/splashscreen_view.dart';
import 'package:cripto_currency_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bertcord CriptoCurrency App',
      home: SplashScreenView(),
      initialBinding: SplashScreenBinding(),
      getPages: AppPages.pages,
    );
  }
}
