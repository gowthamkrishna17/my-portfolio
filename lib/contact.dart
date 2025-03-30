import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:porfolio/constWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});
  void _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'gowthamgo024@gmail.com', // Replace with your email address
      queryParameters: {
        'subject': 'Portfolio Inquiry',
        'body': 'Hello, I would like to discuss your portfolio.',
      },
    );

    if (await canLaunch(emailUri.toString())) {
      await launch(emailUri.toString());
    } else {
      throw 'Could not launch $emailUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Lottie.asset('assets/lottie/Animation - 1743142597346.json'),
          ),
          Text(
            "Contact",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          kheight10,
          Text(
            "Get in touch with me via social media or email",
            style: TextStyle(fontSize: 16, color: kgray),
          ),
          kheight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              InkWell(
                onTap: _launchEmail,
                child: iconwidget(
                  icon: Image.asset('assets/icon/emailfill.png'),
                  text: 'email',
                ),
              ),
              InkWell(
                onTap: () async {
                  const url = 'https://wa.me/9995880898';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: iconwidget(
                  icon: Image.asset('assets/icon/whatsapp.png'),
                  text: 'Whatsapp',
                ),
              ),
            ],
          ),
          kheight25,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () async {
                  const url =
                      'https://github.com/gowthamkrishna17?tab=repositories';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: iconwidget(
                  icon: Image.asset('assets/icon/github.png'),
                  text: 'Github',
                ),
              ),
              InkWell(
                onTap: () async {
                  const url =
                      'https://www.linkedin.com/in/gowtham-krishna-409068270?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },

                child: iconwidget(
                  icon: Image.asset('assets/icon/message.png'),
                  text: 'Linkdin',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class iconwidget extends StatelessWidget {
  final String text;
  final Image icon;
  const iconwidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 50, width: 50, child: icon),
        kwidth10,
        Text(text, style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
