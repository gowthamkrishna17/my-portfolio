import 'package:flutter/material.dart';
import 'package:porfolio/constWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class costomelinkButton extends StatelessWidget {
  final String url;

  final String text;
  final Color color;

  const costomelinkButton({
    super.key,
    this.url = '',
    required this.color,

    required this.text,
  });

  Future<void> _launchURL() async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw "Could not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: kblack,
        minimumSize: Size(30, 35),
      ),
      onPressed: _launchURL,
      child: Text(text, style: TextStyle(color: kwhite, fontFamily: 'KOMIKAX')),
    );
  }
}

class iconwidget extends StatelessWidget {
  final String url;
  final String text;
  final Image icon;
  const iconwidget({
    super.key,
    required this.icon,
    required this.text,
    this.url = '',
  });

  Future<void> _launchurl() async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'could not throw url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchurl,
      child: Row(
        children: [
          SizedBox(height: 50, width: 50, child: icon),
          kwidth10,
          Text(text, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

class emailbtn extends StatelessWidget {
  final String text;
  final Image icon;

  const emailbtn({super.key, required this.icon, required this.text});
  void _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path:
          'https://mail.google.com/mail/u/0/#sent?compose=new', // Replace with your email address
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
    return Tooltip(
      message: "gowthamkrishna1717@gmail.com",
      child: InkWell(
        onTap: _launchEmail,
        child: Row(
          children: [
            SizedBox(height: 50, width: 50, child: icon),
            kwidth10,
            Text(text, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

class emaillinkbtn extends StatelessWidget {
  final String resumeUrl =
      'https://drive.google.com/file/d/1fOX7k7xjU1QroSsEBv8cmDN_D9e-hesT/view?usp=drive_link'; // Change to your resume URL

  Future<void> _launchURL() async {
    if (await canLaunch(resumeUrl)) {
      await launch(resumeUrl);
    } else {
      throw 'Could not launch $resumeUrl';
    }
  }

  const emaillinkbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: kblue,
        minimumSize: Size(30, 50),
      ),
      onPressed: _launchURL,
      child: Text(
        "Download resume",
        style: TextStyle(color: kwhite, fontFamily: 'KOMIKAX'),
      ),
    );
  }
}
