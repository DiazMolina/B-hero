import 'package:b_hero/pages/carousel_detail/page_one.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:page_indicator/page_indicator.dart';

class CarouselUi extends StatefulWidget {
  @override
  _CarouselUiState createState() => _CarouselUiState();
}

class _CarouselUiState extends State<CarouselUi> {
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageIndicatorContainer(
          pageView: PageView(
            children: <Widget>[
              SafeArea(
                  child: PageOne("assets/1.png", "Donate Blood",
                      "Lorem Ipsum is simply dummy text\nof the printing and typesetting")),
              SafeArea(
                  child: PageOne("assets/2.png", "Search Blood Donor",
                      "Lorem Ipsum is simply dummy text\nof the printing and typesetting")),
              SafeArea(
                  child: PageTree("assets/3.png", "Explore Updates around you",
                      "Lorem Ipsum is simply dummy text\nof the printing and typesetting")),
            ],
            controller: controller,
          ),
          align: IndicatorAlign.bottom,indicatorSelectorColor: Colors.green,
          length: 3,
          indicatorSpace: 10.0,
        ),
      ),
    );
  }
}
