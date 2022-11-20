import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapplist/src/pages/splash/splash_ctrl.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashCtrl>(() => SplashCtrl());
  }
}
