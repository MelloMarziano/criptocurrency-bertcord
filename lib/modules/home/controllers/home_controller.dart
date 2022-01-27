// ignore_for_file: avoid_print, unused_local_variable, unnecessary_overrides

import 'package:cripto_currency_app/models/CriptoCurrency.dart';
import 'package:cripto_currency_app/repository/repository.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  var limitPost = 0;
  final box = GetStorage();
  get boxContent => limitPost;
  late Future<CriptoCurrencyModel> _futureCoins;
  late Repository repository;
  Future<CriptoCurrencyModel> get futureCoins => _futureCoins;

  @override
  void onInit() {
    super.onInit();
    settingUrl();
    repository = Repository();
    _futureCoins = repository.getAllCriptos(limitPost);
  }

  settingUrl() {
    limitPost = int.parse(
        (box.read('limitPost') == null) ? '5' : box.read('limitPost'));
  }
}
