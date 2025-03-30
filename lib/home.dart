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
          CircleAvatar(
            radius: 110,
            backgroundColor: Colors.amber,
            child: CircleAvatar(backgroundColor: Colors.white, radius: 105),
          ),
          kheight10,
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
          costomeButton(onTap: () {}, color: kblue, text: "Download resume"),
        ],
      ),
    );
  }
}
