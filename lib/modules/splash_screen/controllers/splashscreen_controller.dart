// ignore_for_file: prefer_final_fields, unnecessary_overrides, prefer_const_constructors

import 'dart:async';

import 'package:cripto_currency_app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    loadHome();
    super.onInit();
  }

  loadHome() {
    Timer(Duration(seconds: 5), () {
      Get.offNamed(AppRoutes.HOME);
    });
  }
}
