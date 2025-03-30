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
