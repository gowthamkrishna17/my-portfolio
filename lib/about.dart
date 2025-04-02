import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:porfolio/constWidget.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Lottie.asset(
                  'assets/lottie/Animation - 1743131774683 (1).json',
                ),
              ),
              kheight10,
              Text("About me ", style: ksize25Bl),
              kheight10,
              Text(
                "Hi, I'm Gowtham, a Flutter developer passionate about creating high-performance, "
                " cross-platform mobile apps ,With a background in computer hardware and networking. "
                " I transitioned into software development and have built projects like e-commerce apps, "
                "Netflix mobile app ui clone,To-Do app."
                "I specialize in Flutter, API integration, and state management Provider."
                "I'm eager to contribute to innovative projects and grow as a developer."
                "Check out my projects or connect with me",
                style: TextStyle(
                  fontFamily: 'Exo-Medium',
                  color: kgray,
                  fontWeight: FontWeight.w600,

                  fontSize: 20,
                ),

                softWrap: true,
              ),
              kheight15,
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Text("skills :", style: ksize25Bl),
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
      ),
    );
  }
}
