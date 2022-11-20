
import 'package:get/get.dart';

import 'package:getxapplist/src/pages/inicio/inicio_ctrl.dart';
import 'package:getxapplist/src/pages/listapps/listapps_ctrl.dart';

class InicioBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<InicioCtrl>( InicioCtrl());
  }
}