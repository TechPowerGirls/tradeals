import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeals/styleguide.dart';

class HomePageCatalogues extends StatefulWidget {
  @override
  _HomePageCataloguesState createState() => _HomePageCataloguesState();
}

class _HomePageCataloguesState extends State<HomePageCatalogues> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: <Widget>[
          //department section heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Catalogues",
                  style: AppTheme.section_heading,
                ),
                Text(
                  "See All",
                  style: AppTheme.See_all,
                ),
              ],
            ),
          ),
          //department category list start here
          Container(
              height: 1200,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                primary: false,
                padding: const EdgeInsets.all(5),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w3.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w4.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w3.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w4.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w3.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w4.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w3.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/w4.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/slider/m1.jpeg")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mens Wear",
                          style: AppTheme.catalogues_text,
                        ),
                        Text(
                          "100+ new",
                          style: AppTheme.See_all,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
    ;
  }
}
