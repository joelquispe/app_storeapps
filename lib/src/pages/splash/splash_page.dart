import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapplist/src/pages/splash/splash_ctrl.dart';
import 'package:lottie/lottie.dart';



class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashCtrl(),
      builder: (_) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("assets/jsons/android.json")
              ],
            ),
          ),
        );
      },
    );
  }
}
