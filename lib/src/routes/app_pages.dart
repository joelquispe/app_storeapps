import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapplist/src/bindings/home_binding.dart';
import 'package:getxapplist/src/bindings/splash_binding.dart';
import 'package:getxapplist/src/pages/home/home_page.dart';
import 'package:getxapplist/src/pages/splash/splash_page.dart';
import 'package:getxapplist/src/routes/app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME
    , page: () => HomePage(),
      binding: HomeBinding()),
  ];
}
