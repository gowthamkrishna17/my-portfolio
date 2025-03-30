import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:porfolio/constWidget.dart';
import 'package:porfolio/linkfetching.dart';
import 'package:porfolio/widgets.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("My Projects", style: ksize30B),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Netflix UI Clone",
                style: TextStyle(color: kblack, fontFamily: 'KOMIKAX'),
              ),
              costomelinkButton(
                color: kgray,
                text: "git",
                url: 'https://github.com/gowthamkrishna17/Netflix-UI-Clone',
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),

            child: CarouselSlider(
              items: [
                Image.asset('assets/screenshorts/screen (6).jpg'),
                Image.asset('assets/screenshorts/screen (7).jpg'),
                Image.asset('assets/screenshorts/screen (8).jpg'),
                Image.asset('assets/screenshorts/screen (9).jpg'),
                Image.asset('assets/screenshorts/screen (10).jpg'),
                Image.asset('assets/screenshorts/screen (11).jpg'),
                Image.asset('assets/screenshorts/screen (12).jpg'),
                Image.asset('assets/screenshorts/screen (13).jpg'),
                Image.asset('assets/screenshorts/screen (14).jpg'),
              ],
              options: CarouselOptions(
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 0.40,

                autoPlayInterval: Duration(seconds: 2),

                enlargeCenterPage: true,
                enlargeFactor: .1,
              ),
            ),
          ),
          Text(
            style: TextStyle(),
            textAlign: TextAlign.center,
            "Developed a Netflix-inspired mobile application ui using flutter.The project replicates the look and feel of Netflix app",
          ),
          kdivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Toddo App"),
              costomelinkButton(
                color: kgray,
                text: "git",
                url: 'https://github.com/gowthamkrishna17/toddo',
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),

            child: CarouselSlider(
              items: [
                Image.asset('assets/screenshorts/screen (1).jpg'),
                Image.asset('assets/screenshorts/screen (2).jpg'),
                Image.asset('assets/screenshorts/screen (3).jpg'),
                Image.asset('assets/screenshorts/screen (4).jpg'),
                Image.asset('assets/screenshorts/screen (5).jpg'),
              ],
              options: CarouselOptions(
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 0.40,

                autoPlayInterval: Duration(seconds: 2),

                enlargeCenterPage: true,
                enlargeFactor: .1,
              ),
            ),
          ),
          Text(
            style: TextStyle(),
            textAlign: TextAlign.center,
            "Developed a feature-rich Toddo application.Allowse user to add,delete and mark task as complete",
          ),
          kdivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("E-commerce app"),
              costomelinkButton(
                color: kgray,
                text: "git",
                url: 'https://github.com/gowthamkrishna17/-Ecommerce-app',
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.all(20),

            child: CarouselSlider(
              items: [
                Image.asset('assets/screenshorts/screen (15).jpg'),
                Image.asset('assets/screenshorts/screen (16).jpg'),
                Image.asset('assets/screenshorts/screen (17).jpg'),
                Image.asset('assets/screenshorts/screen (18).jpg'),
                Image.asset('assets/screenshorts/screen (19).jpg'),
                Image.asset('assets/screenshorts/screen (20).jpg'),
                Image.asset('assets/screenshorts/screen (21).jpg'),
                Image.asset('assets/screenshorts/screen (22).jpg'),
                Image.asset('assets/screenshorts/screen (23).jpg'),
              ],
              options: CarouselOptions(
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 0.40,

                autoPlayInterval: Duration(seconds: 2),

                enlargeCenterPage: true,
                enlargeFactor: .1,
              ),
            ),
          ),
          Text(
            style: TextStyle(),
            textAlign: TextAlign.center,
            "Developed e-commerce app ui with features like product listing,category-wise browsing,cart management and checkout"
            "Allows user to add,delete and mark task as complete",
          ),
        ],
      ),
    );
  }
}
