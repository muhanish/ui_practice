import 'package:flutter/material.dart';
import 'package:ui_design/pages/home_page.dart';
import 'package:ui_design/pages/into_cards.dart';
import 'package:ui_design/pages/into_pages/page2.dart';
import 'package:ui_design/pages/into_pages/page3.dart';
import 'package:ui_design/pages/login_page.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
//import 'package:splashscreen/splashscreen.dart';

import 'package:ui_design/pages/splash_screen.dart';
import 'package:ui_design/widgets/bottom_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(),
      routes: {
        '/': (context) => SplashScreen(),
        '/intro': (context) => IntroCards(),
        '/loginPage': (context) => LoginPage(),
        '/homePage': (context) => HomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
