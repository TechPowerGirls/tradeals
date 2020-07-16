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

    return

      SliverGrid(
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
            );
          },
          childCount: 10,
        ),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

        ),
      );




  }
}
