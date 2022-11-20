
import 'package:get/get.dart';
import 'package:getxapplist/src/pages/home/home_ctrl.dart';
import 'package:getxapplist/src/pages/inicio/inicio_ctrl.dart';
import 'package:getxapplist/src/pages/listapps/listapps_ctrl.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<HomeCtrl>( HomeCtrl());
    Get.put<InicioCtrl>( InicioCtrl());
    Get.put<ListappsCtrl>( ListappsCtrl());
  }
}