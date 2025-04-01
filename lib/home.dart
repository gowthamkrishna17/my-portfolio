import 'package:flutter/material.dart';
import 'package:porfolio/constWidget.dart';
import 'package:porfolio/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          kheight10,
          kheight20,
          kheight20,
          Transform.scale(
            scale: 1.3,
            child: CircleAvatar(
              radius: 90,
              backgroundColor: kgray,
              child: CircleAvatar(
                backgroundColor: kblack,
                backgroundImage: AssetImage('assets/lottie/IMG_3704.JPG'),
                radius: 88,
              ),
            ),
          ),
          kheight10,
          kheight25,
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Hi i'm. ",
              style: ksize28B,
              children: [
                TextSpan(text: "Gowtham\n", style: ksize30B),

                TextSpan(text: 'Flutter', style: ksize30B),
                TextSpan(text: ' Developer', style: ksize28B),
              ],
            ),
          ),
          kheight5,

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.center,

              softWrap: true,
              text: TextSpan(
                text:
                    "Passionate about building beautiful & efficient mobile apps using flutter. "
                    "Eager to learn, grow and contribute to innovative projects.",
                style: kaboutText,
                children: [
                  TextSpan(text: "View my ", style: kaboutText),
                  TextSpan(
                    text: "Project",
                    style: TextStyle(backgroundColor: kgray, color: kwhite),
                  ),
                  TextSpan(text: "  "),
                  TextSpan(
                    text: "resume ",
                    style: TextStyle(backgroundColor: kgray, color: kwhite),
                  ),
                  TextSpan(
                    text:
                        "contact me or send me an email.gowthamkrishna1717@gmail.com",
                    style: kaboutText,
                  ),
                ],
              ),
            ),
          ),
          kheight5,
          Text(
            "Palakkad,Kerala,india",
            style: kaboutText,
            textAlign: TextAlign.center,
          ),
          kheight10,
          Resumedownloadbtn(),
          kheight15,
        ],
      ),
    );
  }
}
