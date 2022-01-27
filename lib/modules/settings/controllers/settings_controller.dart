// ignore_for_file: prefer_final_fields, unnecessary_overrides, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class SettingsController extends GetxController {
  final box = GetStorage();
  TextEditingController _limitPost = TextEditingController();
  TextEditingController get limitPost => _limitPost;

  @override
  void onInit() {
    super.onInit();

    _limitPost.text =
        (box.read('limitPost') == null) ? '5' : box.read('limitPost');
  }

  writeBox() async {
    await box.write('limitPost', _limitPost.text);
    Get.snackbar(
      "Limit Post Setting",
      "Post limit changed to ${_limitPost.text}",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Color(0xFFBCE1E1),
    );
  }
}
