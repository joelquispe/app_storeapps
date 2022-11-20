import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapplist/src/routes/app_pages.dart';
import 'package:getxapplist/src/routes/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      color: Colors.grey,
      initialRoute: Routes.INITIAL,
      theme: ThemeData(
        
        primaryColor: Color(0x00ffEB1D36),
        scaffoldBackgroundColor: Color(0x00ffEFEFEF),
        backgroundColor: Color(0x00ffEB1D36),
        accentColor: Color(0x00ffEB1D36) ,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Color(0x00ff06283D) ,
          ),
          headline2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0x00ff06283D) ,
          ),
        )
      ),
      
      defaultTransition: Transition.native,
      getPages: AppPages.pages,
    );
  }
}
