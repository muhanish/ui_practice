import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:ui_design/main.dart';
import 'package:ui_design/pages/into_cards.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        (() => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => IntroCards())))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .5,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Medica",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 2.0,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .3,
            ),
            LoadingAnimationWidget.hexagonDots(
              color: Colors.blue,
              size: 60,
            ),
          ],
        ),
      ),
    );
  }
}
