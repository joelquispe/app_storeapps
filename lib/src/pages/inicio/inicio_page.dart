import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:getxapplist/src/data/dataapps.dart';
import 'package:getxapplist/src/pages/detailsapp/detailsapp_page.dart';
import 'package:getxapplist/src/pages/inicio/inicio_ctrl.dart';
import 'package:carousel_slider/carousel_slider.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<InicioCtrl>(
        init: InicioCtrl(),
        builder: (_) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                 
                  child: Column(
                    children: [
                      CarouselSlider(
                          items: listapps
                              .map((e) => Stack(

                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 6),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset("${e.front}",fit: BoxFit.cover,width: Get.width,height: Get.height/3,)),
                                      ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                        color: Colors.white,
                                      ),
                                      height: 30,
                                      child: Text("${e.name}",style: TextStyle(fontSize: 22),),
                                    ),
                                  )
                                ],
                              ))
                              .toList(),
                          options: CarouselOptions(
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          )),
                      Divider(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Juegos",style: Theme.of(context).textTheme.headline1,),
                            SizedBox(height: 5,),
                            Container(
                              height: 100,
                              child: ListView.builder(
                                
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                  itemCount: listapps.length,
                                  itemBuilder: (context, index) {
                                    var app = listapps[index];
                                    return GestureDetector(
                                      onTap: (){
                                        Get.to(DetailsappPage(),
                                      transition: Transition.circularReveal,
                                      arguments: app,
                                      duration: Duration(seconds: 1));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right:10),
                                        child:ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset("${app.image}",fit: BoxFit.cover,width: 100))
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                       Divider(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Libros",style: Theme.of(context).textTheme.headline1,),
                            SizedBox(height: 5,),
                            Container(
                              height: 100,
                              child: ListView.builder(
                                
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                  itemCount: listapps.length,
                                  itemBuilder: (context, index) {
                                    var app = listapps[index];
                                    return GestureDetector(
                                      onTap: (){
                                        Get.to(DetailsappPage(),
                                      transition: Transition.circularReveal,
                                      arguments: app,
                                      duration: Duration(seconds: 1));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right:10),
                                        child:ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset("${app.image}",filterQuality: FilterQuality.high,fit: BoxFit.cover,width: 100))
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Peliculas",style: Theme.of(context).textTheme.headline1,),
                            SizedBox(height: 5,),
                            Container(
                              height: 100,
                              child: ListView.builder(
                                
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                  itemCount: listapps.length,
                                  itemBuilder: (context, index) {
                                    var app = listapps[index];
                                    return GestureDetector(
                                      onTap: (){
                                        Get.to(DetailsappPage(),
                                      transition: Transition.circularReveal,
                                      arguments: app,
                                      duration: Duration(seconds: 1));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right:10),
                                        child:ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset("${app.image}",fit: BoxFit.cover,width: 100,))
                                      ),
                                    );
                                  }),
                            ),
                            Divider(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Libros",style: Theme.of(context).textTheme.headline1,),
                            SizedBox(height: 5,),
                            Container(
                              height: 100,
                              child: ListView.builder(
                                
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                  itemCount: listapps.length,
                                  itemBuilder: (context, index) {
                                    var app = listapps[index];
                                    return GestureDetector(
                                      onTap: (){
                                        Get.to(DetailsappPage(),
                                      transition: Transition.circularReveal,
                                      arguments: app,
                                      duration: Duration(seconds: 1));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right:10),
                                        child:ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset("${app.image}",filterQuality: FilterQuality.high,fit: BoxFit.cover,width: 100))
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
