import 'package:flutter/material.dart';
import 'package:porfolio/about.dart';
import 'package:porfolio/constWidget.dart';
import 'package:porfolio/contact.dart';
import 'package:porfolio/home.dart';
import 'package:porfolio/project.dart';

class MobileMainpage extends StatefulWidget {
  const MobileMainpage({super.key});

  @override
  State<MobileMainpage> createState() => _MainpageState();
}

class _MainpageState extends State<MobileMainpage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [Home(), About(), Project(), Contact()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblue,
        actions: [
          _buildNavButton("Home", 0),
          _buildNavButton("About", 1),
          _buildNavButton("Project", 2),
          _buildNavButton("Contact", 3),
        ],
      ),
      body: IndexedStack(index: _selectedIndex, children: _pages),
    );
  }

  Widget _buildNavButton(String text, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w100,
          fontFamily: 'KOMIKAX',
          color: _selectedIndex == index ? kwhite : kblack,
        ),
      ),
    );
  }
}
