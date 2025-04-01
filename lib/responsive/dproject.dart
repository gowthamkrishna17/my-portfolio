import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:porfolio/constWidget.dart';
import 'package:porfolio/linkfetching.dart';
import 'package:porfolio/widgets.dart';

class Dproject extends StatelessWidget {
  const Dproject({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          kheight10,
          Text("My Projects", style: ksize30Bl),
          kheight5,
          kheight15,

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,

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
                    viewportFraction: 0.35,

                    autoPlayInterval: Duration(seconds: 2),

                    enlargeCenterPage: true,
                    enlargeFactor: .1,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            "Netflix UI Clone",
                            style: TextStyle(
                              fontSize: 25,
                              color: kblack,
                              fontFamily: 'KOMIKAX',
                            ),
                          ),
                        ),
                        Expanded(
                          child: costomelinkButton(
                            color: kgray,
                            text: "git",
                            url:
                                'https://github.com/gowthamkrishna17/Netflix-UI-Clone',
                          ),
                        ),
                      ],
                    ),
                    kheight25,
                    Text(
                      style: TextStyle(),
                      textAlign: TextAlign.start,
                      "Developed a Netflix-inspired mobile application ui using flutter.The project replicates the look and feel of Netflix app",
                    ),
                  ],
                ),
              ),
            ],
          ),

          kdivider(),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,

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
                    viewportFraction: 0.35,

                    autoPlayInterval: Duration(seconds: 2),

                    enlargeCenterPage: true,
                    enlargeFactor: .1,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            "To-DO app",
                            style: TextStyle(
                              fontSize: 25,
                              color: kblack,
                              fontFamily: 'KOMIKAX',
                            ),
                          ),
                        ),
                        Expanded(
                          child: costomelinkButton(
                            color: kgray,
                            text: "git",
                            url: 'https://github.com/gowthamkrishna17/toddo',
                          ),
                        ),
                      ],
                    ),
                    kheight25,
                    Text(
                      style: TextStyle(),
                      textAlign: TextAlign.start,
                      "Developed a feature-rich Toddo application.Allowse user to add,delete and mark task as complete",
                    ),
                  ],
                ),
              ),
            ],
          ),

          kdivider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,

                child: CarouselSlider(
                  items: [
                    // Image.asset('assets/screenshorts/screen (15).jpg'),
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
                    viewportFraction: 0.35,

                    autoPlayInterval: Duration(seconds: 2),

                    enlargeCenterPage: true,
                    enlargeFactor: .1,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            "E-commerce app",
                            style: TextStyle(
                              fontSize: 25,
                              color: kblack,
                              fontFamily: 'KOMIKAX',
                            ),
                          ),
                        ),
                        Expanded(
                          child: costomelinkButton(
                            color: kgray,
                            text: "git",
                            url:
                                'https://github.com/gowthamkrishna17/-Ecommerce-app',
                          ),
                        ),
                      ],
                    ),
                    kheight25,
                    Text(
                      style: TextStyle(),
                      textAlign: TextAlign.start,
                      "Developed e-commerce app ui with features like product listing,category-wise browsing,cart management and checkout"
                      "Allows user to add,delete and mark task as complete",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
