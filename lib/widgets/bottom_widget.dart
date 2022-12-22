import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomWidget {
  static Widget borderBox(BuildContext context, Icon icon) {
    return Container(
      width: 50,
      height: 45,
      child: IconButton(onPressed: () {}, icon: icon),
      decoration: BoxDecoration(
        border: Border.all(width: 0.3),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  static Widget bottomWidget(BuildContext context, String btnText, String text,
      {required PageController controller,
      String nextPage = '',
      bool nextButton = false}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
            child: Text(
              text,
              //softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[600]),
            ),
          ),
          Container(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(
                dotHeight: 10, dotWidth: 10, activeDotColor: Colors.blue,

                //type: SwapType.yRotation,
              ),
            ),
          ),
          nextButton
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 00, 00, 10),
                    child: Container(
                      width: 300,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(150.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (nextPage != null) {
                            Navigator.pushNamed(context, nextPage);
                          }
                        },
                        child: Text(
                          btnText,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  height: 50,
                )
        ],
      ),
    );
  }
}

Widget HomePageIcon(Icon icon, String text) {
  return Column(
    children: [
      CircleAvatar(
        radius: 26,
        child: icon,
        backgroundColor: Colors.grey.withOpacity(0.2),
      ),
      SizedBox(
        height: 4,
      ),
      Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}
