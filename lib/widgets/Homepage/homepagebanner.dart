import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePageBanner extends StatefulWidget {
  @override
  _HomePageBannerState createState() => _HomePageBannerState();
}

class _HomePageBannerState extends State<HomePageBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/images/banner/banner1.png"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4,
        indicatorBgPadding: 0,
        overlayShadowColors: Colors.white,
        showIndicator: false,
      ),
    );
  }
}
