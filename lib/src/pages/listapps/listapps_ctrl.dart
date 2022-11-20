import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getxapplist/src/data/dataapps.dart';
import 'package:getxapplist/src/models/app_model.dart';

class ListappsCtrl extends GetxController {
  List<Appmodel> apps = listapps;

  var foundapps = <Appmodel>[].obs;

  late TextEditingController _input;

  void search(String input) {
    var results = List<Appmodel>.empty(growable: true);
    
    if (input.isEmpty) {
      foundapps.value = apps;
    } else {
      results = apps.where((e) {
        return e.name!.toLowerCase().contains(input.toLowerCase());
      }).toList();

      foundapps.value = results;
    }
  }

  @override
  void onInit() {
    foundapps.value = apps;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
