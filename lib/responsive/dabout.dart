import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:porfolio/constWidget.dart';

class Dabout extends StatelessWidget {
  const Dabout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 1,
            child: Lottie.asset(
              'assets/lottie/Animation - 1743131774683 (1).json',
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Text("About me", style: ksize30Bl, textAlign: TextAlign.center),
                kheight25,

                Text(
                  "Hi, I'm Gowtham, a Flutter developer passionate about creating high-performance, "
                  " cross-platform mobile apps ,With a background in computer hardware and networking, "
                  " I transitioned into software development and have built projects like e-commerce apps, "
                  "netflix mobile app UI, To-Do app."
                  "I specialize in Flutter, API integration, and state management Provider,bloc."
                  "I'm eager to contribute to innovative projects and grow as a developer."
                  "Check out my projects or connect with me",
                  style: TextStyle(
                    fontFamily: 'Exo-Medium',
                    color: kgray,
                    fontWeight: FontWeight.w600,

                    fontSize: 22,
                  ),

                  softWrap: true,
                ),
                kheight15,

                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Text("skills :", style: ksize30Bl),
                      Image.asset('assets/icon/icons8-flutter-144.png'),
                      Image.asset('assets/icon/icons8-dart-144.png'),
                      Image.asset('assets/icon/icons8-html-144.png'),
                      Image.asset('assets/icon/icons8-css-144.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
