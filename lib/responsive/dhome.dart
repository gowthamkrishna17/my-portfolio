import 'package:flutter/material.dart';
import 'package:porfolio/constWidget.dart';
import 'package:porfolio/widgets.dart';

class Dhome extends StatelessWidget {
  const Dhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),

      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 10,

        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 150,
                backgroundColor: kblack,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('assets/lottie/IMG_3704.JPG'),

                  radius: 148,
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
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
                      kheight20,

                      RichText(
                        textAlign: TextAlign.center,

                        softWrap: true,

                        text: TextSpan(
                          text:
                              "Passionate about building beautiful & efficient mobile apps using flutter. "
                              "Eager to learn, grow and contribute to innovative projects.",
                          style: kaboutText,
                          children: [
                            TextSpan(text: "View my ", style: kaboutTextDesk),
                            TextSpan(
                              text: "Project",
                              style: TextStyle(
                                backgroundColor: kgray,
                                color: kwhite,
                              ),
                            ),
                            TextSpan(text: "  "),
                            TextSpan(
                              text: "resume ",
                              style: TextStyle(
                                backgroundColor: kgray,
                                color: kwhite,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "contact me or send me an email.gowthamkrishna1717@gmail.com",
                              style: kaboutTextDesk,
                            ),
                          ],
                        ),
                      ),
                      kheight5,
                      Text(
                        "Palakkad,Kerala,india",
                        style: kaboutTextDesk,
                        textAlign: TextAlign.center,
                      ),
                      kheight10,
                      kheight15,
                      Resumedownloadbtn(),
                      kheight25,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
