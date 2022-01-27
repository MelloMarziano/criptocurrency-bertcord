import 'package:cripto_currency_app/modules/detail/bindings/detail_binding.dart';
import 'package:cripto_currency_app/modules/detail/views/detail_view.dart';
import 'package:cripto_currency_app/modules/home/bindings/home_binding.dart';
import 'package:cripto_currency_app/modules/home/views/home_view.dart';
import 'package:cripto_currency_app/modules/settings/bindings/settings_binding.dart';
import 'package:cripto_currency_app/modules/settings/views/settings_view.dart';
import 'package:cripto_currency_app/modules/splash_screen/bindings/splashscreen_binding.dart';
import 'package:cripto_currency_app/modules/splash_screen/views/splashscreen_view.dart';
import 'package:cripto_currency_app/routes/app_routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASHSCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: AppRoutes.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
  ];
}
