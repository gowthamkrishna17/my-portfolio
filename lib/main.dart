import 'package:flutter/material.dart';
import 'package:porfolio/mainPage.dart';
import 'package:porfolio/responsive/deskTopmainPage.dart';
import 'package:porfolio/responsive/responsiveLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        fontFamily: 'Exo-Bolds',

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Responsivelayout(
        desktopScaffold: const DeskTopmainPage(),
        mobileScaffold: const MobileMainpage(),
      ),
    );
  }
}
