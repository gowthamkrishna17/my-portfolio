import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:porfolio/constWidget.dart';
import 'package:porfolio/linkfetching.dart';

class Dcontact extends StatelessWidget {
  const Dcontact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Lottie.asset('assets/lottie/Animation - 1743142597346.json'),
          ),
          Expanded(
            flex: 1,

            child: Card(
              shadowColor: const Color.fromARGB(255, 176, 178, 179),
              color: const Color.fromARGB(255, 225, 228, 230),
              margin: EdgeInsets.all(50),
              elevation: 5,
              child: Column(
                children: [
                  kheight20,
                  Text("Contact", style: ksize30Bl),
                  kheight10,
                  Text(
                    "Get in touch with me via social media or email",
                    style: TextStyle(fontSize: 16, color: kgray),
                  ),
                  kheight20,
                  kheight25,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      emailbtn(
                        icon: Image.asset('assets/icon/emailfill.png'),
                        text: 'email',
                      ),
                      iconwidget(
                        url: 'https://wa.me/9995880898',
                        icon: Image.asset('assets/icon/whatsapp.png'),
                        text: 'Whatsapp',
                      ),
                    ],
                  ),
                  kheight20,
                  kheight25,
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      iconwidget(
                        url:
                            'https://github.com/gowthamkrishna17?tab=repositories',
                        icon: Image.asset('assets/icon/github.png'),
                        text: 'Github',
                      ),
                      iconwidget(
                        url:
                            'https://www.linkedin.com/in/gowtham-krishna-409068270?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
                        icon: Image.asset('assets/icon/message.png'),
                        text: 'Linkdin',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
