import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeCtrl extends GetxController {
  RxInt currentIndex = 0.obs;
   PageController? pageController;

  @override
  void onReady() {
    
    super.onReady();
  }
  @override
  void onInit() {
    pageController = PageController();
    print("jolsdkalsd");
    currentIndex.listen((_) {
      print(_);
    });
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }

  goInto(int index) {
    currentIndex.value = index;
    pageController?.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
