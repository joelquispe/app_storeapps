import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapplist/src/pages/detailsapp/detailsapp_ctrl.dart';
class InicioBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<DetailsappCtrl>( DetailsappCtrl());
  }
}