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

    return SliverGrid.count(
      crossAxisCount: 2,
      children: [
        Padding(
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
        ),
        Padding(
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
        ),
        Padding(
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
        ),
        Padding(
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
        ),
        Padding(
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
        ),
        Padding(
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
        ),
        Padding(
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
        ),
      ],
    );
  }
}
//this is sample code for gridview
/* Container(
            height: 420,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,

              itemCount: widget.character.highWords.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Material(
                    elevation: 1,
                    child: Center(
                      child: Container(
                        child: Text(widget.character.highWords[index],style: AppTheme.wordListHead,),

                      ),
                    ),
                  ),
                );
              },
            ),
          ),*/
