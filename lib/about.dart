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
              Text(
                "Hi, I'm Your Name, a Flutter developer passionate about creating high-performance, "
                " cross-platform mobile apps ,With a background in computer hardware and networking, "
                " I transitioned into software development and have built projects like e-commerce apps, "
                "job-search platforms, and streaming service demos."
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
            ],
          ),
        ),
      ),
    );
  }
}
