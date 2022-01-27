// ignore_for_file: unnecessary_overrides, avoid_print, prefer_final_fields, unused_field

import 'package:cripto_currency_app/models/CriptoCurrency.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';

class DetailController extends GetxController {
  List<CriptoCurrency> _data = Get.arguments;
  List<CriptoCurrency> get data => _data;
  String _outPutDate = "";
  String get outPutDate => _outPutDate;

  @override
  void onInit() {
    super.onInit();
    DateTime parseData =
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(_data[0].lastUpdated);
    var inputDate = DateTime.parse(parseData.toString());
    var outPutFormat = DateFormat('MM/dd/yyyy hh:mm a');
    _outPutDate = outPutFormat.format(inputDate);
  }
}
