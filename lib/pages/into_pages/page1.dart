import 'package:flutter/material.dart';

import 'package:ui_design/widgets/bottom_widget.dart';

class Page1 extends StatefulWidget {
  Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 224, 236),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('page 1'),
          // BottomWidget.bottomWidget(
          //   context,
          //   "Next",
          //   "Thousand of doctors & experts to help you health!",
          //   Page2(), controller: null,
          // ),
        ],
      ),
    );
  }
}
