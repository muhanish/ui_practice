import 'package:flutter/material.dart';
import 'package:ui_design/pages/login_page.dart';

import 'package:ui_design/widgets/bottom_widget.dart';

class Page3 extends StatefulWidget {
  Page3({super.key, required this.controller});
  final PageController controller;

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 145, 193, 227),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("page3"),
          BottomWidget.bottomWidget(
            context,
            "Get Started",
            "Let's starts living healthy and well with us right now!",
            controller: widget.controller,
            // LoginPage(),
          ),
        ],
      ),
    );
  }
}
