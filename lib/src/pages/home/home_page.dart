import 'package:get/get.dart';
import 'package:getxapplist/src/pages/home/home_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:getxapplist/src/pages/inicio/inicio_page.dart';
import 'package:getxapplist/src/pages/listapps/listapps_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends GetView<HomeCtrl> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCtrl>(
        init: HomeCtrl(),
        builder: (_) {
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              body: SizedBox.expand(
                  child: PageView(
                controller: _.pageController,
                onPageChanged: (index) {
                  _.currentIndex.value = index;
                },
                children: [InicioPage(), ListappsPage()],
              )),
              bottomNavigationBar: Obx(
                () => CurvedNavigationBar(
                    index: _.currentIndex.value,
                    onTap: (index) {
                      _.currentIndex.value = index;
                       _.pageController?.animateToPage(index,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOutCirc);
                        print("jieikas");
                        print(index);
                      if (_.pageController!.hasClients) {
                       
                      }
                    },
                    height: 60,
                    
                    letIndexChange: (index)=> true,
                    buttonBackgroundColor: Theme.of(context).primaryColor,
                    color: Theme.of(context).primaryColor,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    items: [Icon(Icons.home), Icon(Icons.list)]),
              ));
        });
  }
}
