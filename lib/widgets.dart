import 'dart:io';
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:porfolio/constWidget.dart';

class kdivider extends StatelessWidget {
  const kdivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Divider(color: kgray, thickness: 5),
    );
  }
}

class costomeButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onTap;
  const costomeButton({
    super.key,
    required this.color,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: kblack,
        minimumSize: Size(30, 35),
      ),
      onPressed: onTap,
      child: Text(text, style: TextStyle(color: kwhite, fontFamily: 'KOMIKAX')),
    );
  }
}

class Resumedownloadbtn extends StatelessWidget {
  const Resumedownloadbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: kblue,
        minimumSize: Size(30, 50),
      ),
      onPressed: _downloadResume,
      child: Text(
        "Download resume",
        style: TextStyle(color: kwhite, fontFamily: 'KOMIKAX'),
      ),
    );
  }

  void _downloadResume() {
    // The path to your resume in the assets folder
    final String filePath = 'assets/lottie/flutterResume_17.pdf';

    // Trigger the download
    html.AnchorElement downloadLink =
        html.AnchorElement(href: filePath)
          ..setAttribute('download', 'flutterResume_17.pdf')
          ..click();
  }
}
