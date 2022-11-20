
import 'package:get/get.dart';
import 'package:getxapplist/src/pages/listapps/listapps_ctrl.dart';

class ListappsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ListappsCtrl>(() => ListappsCtrl());
  }
}