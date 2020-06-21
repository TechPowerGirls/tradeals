import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePageCarousel extends StatefulWidget {
  @override
  _HomePageCarouselState createState() => _HomePageCarouselState();
}

class _HomePageCarouselState extends State<HomePageCarousel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        height: 200,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/images/slider/c1.jpg"),
            AssetImage("assets/images/slider/m1.jpeg"),
            AssetImage("assets/images/slider/m2.jpg"),
            AssetImage("assets/images/slider/w1.jpeg"),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4,
          indicatorBgPadding: 0,
          overlayShadowColors: Colors.white,
          showIndicator: false,
        ),
      ),
    );
  }
}
