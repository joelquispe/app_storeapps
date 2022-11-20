import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getxapplist/src/const/text.dart';
import 'package:getxapplist/src/pages/detailsapp/detailsapp_page.dart';
import 'package:getxapplist/src/pages/listapps/listapps_ctrl.dart';
import 'package:getxapplist/src/routes/app_routes.dart';

class ListappsPage extends StatefulWidget {
  const ListappsPage({Key? key}) : super(key: key);

  @override
  State<ListappsPage> createState() => _ListappsPageState();
}

class _ListappsPageState extends State<ListappsPage> {
  TextEditingController _input = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListappsCtrl>(
        init: ListappsCtrl(),
        builder: (_) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: Get.height,
                width: Get.width,
                child: Column(
                  children: [
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.search),
                            labelText: "Buscar...",
                            
                            floatingLabelBehavior: FloatingLabelBehavior.never),
                        onChanged: (value) {
                          
                          _.search(value);
                          print(_input.text);
                        },
                      ),
                    ),
                    Expanded(
                        child: Container(
                      child: Obx(() => ListView.builder(
                            shrinkWrap: true,
                            itemCount: _.foundapps.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(DetailsappPage(),
                                      transition: Transition.circularReveal,
                                      arguments: _.foundapps[index],
                                      duration: Duration(seconds: 1));
                                },
                                child: Card(
                                  elevation: 9,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Theme.of(context).scaffoldBackgroundColor
                                    ),
                                    width: Get.width / 7,
                                   
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(20),
                                                child: Container(
                                                  
                                                  width: 20,
                                                  child: Image.asset(
                                                    _.foundapps[index].image!,
                                                    
width: 50,
                                                    
                                                    fit: BoxFit.cover,
                                                    
                                                  ),
                                                ),
                                              )),
                                              SizedBox(width: 10,),
                                          Expanded(
                                              flex: 3,
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                     SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "${_.foundapps[index].name}",
                                                      textAlign: TextAlign.center,
                                                      style: Theme.of(context).textTheme.headline1,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                        "${_.foundapps[index].description}"),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "Developer: ${_.foundapps[index].developer}"),
                                                        Text(
                                                            "Versión: ${_.foundapps[index].version}"),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )),
                    )),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
