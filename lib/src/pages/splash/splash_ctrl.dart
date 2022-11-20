import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapplist/src/pages/home/home_page.dart';

class SplashCtrl extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 4), () {
      Get.off(HomePage(), transition: Transition.fade);
    });
  }
}
