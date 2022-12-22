import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget SingUpDialog(BuildContext context) {
  return AlertDialog(
    // title: const Text('AlertDialog Title'),
    // content: const Text('AlertDialog description'),
    contentPadding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    actions: <Widget>[
      Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 50,
            child: Icon(
              Icons.person,
              size: 60,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Congratulations!',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue[600]),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'You account is ready to use. You will be redirected to home page in a few seconds.',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LoadingAnimationWidget.hexagonDots(
            color: Colors.blue,
            size: 50,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ],
  );
}
