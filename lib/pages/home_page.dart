import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/pages/home_page_widgets/app_bar.dart';
import 'package:ui_design/pages/home_page_widgets/search_bar.dart';
import 'package:ui_design/widgets/bottom_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(keepPage: true, viewportFraction: .8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: SafeArea(child: MyAppBar()),
          preferredSize: Size.fromHeight(100)),
      body: Container(
        child: Column(
          children: [
            SearchBar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BasicDemo(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Doctor Speciality",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                  Text('See All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: MyGridView(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Doctor ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                  Text('See All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  ChipWid(lableText: 'All'),
                  SizedBox(
                    width: 20,
                  ),
                  ChipWid(
                    lableText: 'General',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ChipWid(
                    lableText: 'Dentist',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ChipWid(
                    lableText: 'Nutrition',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.transparent,
          height: 40,
          destinations: [
            Icon(
              Icons.home_filled,
              semanticLabel: 'home',
            ),
            Icon(Icons.hd_outlined),
            Icon(Icons.dock_rounded),
            Icon(
              Icons.person_outline_outlined,
            ),
          ]),
    );
  }
}

class ChipWid extends StatelessWidget {
  final String lableText;
  ChipWid({
    Key? key,
    required this.lableText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide(color: Colors.blue),
      padding: EdgeInsets.symmetric(horizontal: 3.0),
      //labelPadding: EdgeInsets.symmetric(horizontal: 3.0),
      backgroundColor: Colors.blue,
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Text(
          lableText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class BasicDemo extends StatelessWidget {
  const BasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return CarouselSlider(
      options: CarouselOptions(
          height: 150,
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true),
      items: list
          .map((item) => Card(
                child: Center(
                  child: Text(item.toString()),
                ),
                color: Colors.blue,
                shadowColor: Colors.blue,
                elevation: 2.0,
              ))
          .toList(),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      crossAxisSpacing: 5,
      mainAxisSpacing: 15,
      crossAxisCount: 4,
      children: [
        HomePageIcon(Icon(Icons.people), 'General'),
        HomePageIcon(Icon(Icons.people), 'Dentist'),
        HomePageIcon(Icon(Icons.remove_red_eye), 'Opthalmic'),
        HomePageIcon(Icon(Icons.people), 'Nutirtion'),
        HomePageIcon(Icon(Icons.people), 'Nurologis'),
        HomePageIcon(Icon(Icons.people), 'Pediatric'),
        HomePageIcon(Icon(Icons.people), 'Radiologist'),
        HomePageIcon(Icon(Icons.more_horiz), 'More'),
      ],
    );
  }
}



// ClipRRect(
//                 borderRadius: BorderRadius.circular(30),
//                 child: Container(
//                   child: Center(child: Text(item.toString())),
//                   color: Colors.blue,
//                 ),
//               ))
//           .toList(),
