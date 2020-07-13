import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tradeals/pages/dashbaord.dart';
import 'package:tradeals/pages/homepage.dart';
import 'package:tradeals/styleguide.dart';
import 'package:tradeals/widgets/landinpageslider.dart';


class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => AppHomepage(),
      ));
    });
  }

  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: <Widget>[
              SizedBox(height: 100),
              Center(
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(height: 100),
              Container(
                child: LandingPageSlider(),
              ),
              SizedBox(height: 100),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Welcome to ", style: AppTheme.sub_headline),
                      TextSpan(
                          text: "Store of your dream",
                          style: AppTheme.sub_headline),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
