import 'package:flutter/material.dart';
import 'package:porfolio/constWidget.dart';
import 'package:porfolio/responsive/dabout.dart';
import 'package:porfolio/responsive/dcontact.dart';
import 'package:porfolio/responsive/dhome.dart';
import 'package:porfolio/responsive/dproject.dart';

class DeskTopmainPage extends StatefulWidget {
  const DeskTopmainPage({super.key});

  @override
  State<DeskTopmainPage> createState() => _MainpageState();
}

class _MainpageState extends State<DeskTopmainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [Dhome(), Dabout(), Dproject(), Dcontact()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kblue,

        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavButton("Home", 0),
              _buildNavButton("About", 1),
              _buildNavButton("Project", 2),
              _buildNavButton("Contact", 3),
            ],
          ),
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
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: 'KOMIKAX',
            color: _selectedIndex == index ? kwhite : kblack,
          ),
        ),
      ),
    );
  }
}
