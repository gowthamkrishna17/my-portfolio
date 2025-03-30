import 'package:flutter/material.dart';
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
