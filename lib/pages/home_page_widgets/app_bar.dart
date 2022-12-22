import 'package:flutter/material.dart';

Widget MyAppBar() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Good Morning',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Person Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.notifications_none_sharp)),
          ),
          Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.heart_broken_outlined),
              )),
        ],
      ),
    ),
  );
}
