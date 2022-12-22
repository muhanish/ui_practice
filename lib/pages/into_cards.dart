import 'package:flutter/material.dart';
import 'package:ui_design/pages/into_pages/page2.dart';
import 'package:ui_design/pages/into_pages/page3.dart';
import 'package:ui_design/pages/login_page.dart';

import 'package:ui_design/widgets/bottom_widget.dart';

class IntroCards extends StatefulWidget {
  const IntroCards({super.key});

  @override
  State<IntroCards> createState() => _IntroCardsState();
}

class _IntroCardsState extends State<IntroCards> {
  final controller = PageController(keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('page 1'),
                BottomWidget.bottomWidget(
                  context,
                  "Next",
                  "Thousand of doctors & experts to help you health!",
                  controller: controller,
                  // Page2(controller: controller),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('page 2'),
                BottomWidget.bottomWidget(
                  context,
                  "Next",
                  "Health checks & consultation easily anywhere anytime",
                  controller: controller,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('page 3'),
                BottomWidget.bottomWidget(context, "Get Started",
                    "Let's starts living healthy and well with us right now! ",
                    controller: controller,
                    // nextPage: LoginPage(),
                    nextPage: '/loginPage',
                    nextButton: true),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
