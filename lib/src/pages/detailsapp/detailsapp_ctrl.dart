import 'package:get/get.dart';
import 'package:getxapplist/src/data/dataapps.dart';
import 'package:getxapplist/src/models/app_model.dart';

class DetailsappCtrl extends GetxController {
  List<Appmodel> get apps => listapps;
  List<Appmodel> appsByCategory = List<Appmodel>.empty(growable: true);
  var a = Get.arguments;
  @override
  void onInit() {
    // TODO: implement onInit
    filterByCategory(a.category);
    super.onInit();
  }

  void filterByCategory(String category) {
    print(a.name);
    appsByCategory =
        listapps.where((element) => element.category == category).toList();
  }
}
