import 'package:flutter/material.dart';
import 'package:getxapplist/src/data/dataapps.dart';
import 'package:getxapplist/src/models/app_model.dart';
import 'package:get/get.dart';
import 'package:getxapplist/src/pages/detailsapp/detailsapp_ctrl.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailsappPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Appmodel app = Get.arguments;
    return GetBuilder<DetailsappCtrl>(
        init: DetailsappCtrl(),
        builder: (_) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  height: Get.height,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset("${app.front}",width: Get.width ,height: Get.height/3, fit: BoxFit.cover,)),
                                Positioned(
                                  bottom: 0,
                                  left: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "${app.image}",
                                      height: 120,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: SingleChildScrollView(
                            child: Container(
                                child: Column(
                              children: [
                                Text(
                                  "${app.name}",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Card(
                                  elevation: 5,
                                  child: ListTile(
                                    title:
                                        Text("Descripción: ${app.description}"),
                                  ),
                                ),
                                Card(
                                  elevation: 5,
                                  child: ListTile(
                                    title: Text("Correo: ${app.email}"),
                                  ),
                                ),
                                Card(
                                  elevation: 5,
                                  child: ListTile(
                                    title:
                                        Text("Desarrollador: ${app.developer}"),
                                  ),
                                ),
                                Card(
                                  elevation: 5,
                                  child: ListTile(
                                    title: Text("Versión: ${app.version}"),
                                  ),
                                ),
                                Card(
                                  elevation: 5,
                                  child: ListTile(
                                    title: Text("Web: ${app.web}"),
                                  ),
                                ),
                               
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: Get.height / 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Libros",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        height: 100,
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: _.appsByCategory.length,
                                            itemBuilder: (context, index) {
                                              var app = _.appsByCategory[index];
                                              return Container(
                                                  margin: EdgeInsets.only(
                                                      right: 10),
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(20),
                                                    child: Image.asset(
                                                        "${app.image}",width: Get.width/5,fit: BoxFit.cover,),
                                                  ));
                                            }),
                                      ),
                                      
                                    ],
                                  ),
                                ),
                              ],
                            )),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
