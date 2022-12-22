import 'package:flutter/material.dart';

import 'package:ui_design/widgets/bottom_widget.dart';

class Page2 extends StatelessWidget {
  Page2({super.key, required controller});
  late PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 200, 225),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Page 2'),
          BottomWidget.bottomWidget(
            context,
            "Next",
            "Health checks & consultation easily anywhere anytime",
            controller: controller,
            // Page3(
            //   controller: controller,
            // ),
          ),
        ],
      ),
    );
  }
}
