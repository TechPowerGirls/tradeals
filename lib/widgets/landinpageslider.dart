import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class LandingPageSlider extends StatefulWidget {
  @override
  _LandingPageSliderState createState() => _LandingPageSliderState();
}

class _LandingPageSliderState extends State<LandingPageSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: 220,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/images/slider/slider1.png"),
            AssetImage("assets/images/slider/slider2.png"),
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
