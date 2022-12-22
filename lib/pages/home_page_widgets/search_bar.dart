import 'package:flutter/material.dart';

Widget SearchBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search",
            fillColor: Colors.grey.withOpacity(.2),
            filled: true,
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.app_registration_outlined)),
      ),
    ),
  );
}
