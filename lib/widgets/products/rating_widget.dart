import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../styleguide.dart';

class CatalogRating extends StatefulWidget {
  @override
  _CatalogRatingState createState() => _CatalogRatingState();
}

class _CatalogRatingState extends State<CatalogRating> {
  var Excellent = 5.0;
  var veryGood = 4.0;
  var good = 3.0;
  var average = 2.0;
  var poor = 1.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        color: Color(0xFFe9e9e9),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: <Widget>[
              Text(
                "Catlouge Rating",
                style: AppTheme.catalogues_text,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Container(
                  width: 70,
                  height: 30,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "4.5",
                          style: AppTheme.star_text,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("  Excellent : "),
                    Center(
                        child: SmoothStarRating(
                      rating: Excellent,
                      color: Colors.orange,
                      isReadOnly: false,
                      size: 20,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      defaultIconData: Icons.star_border,
                      starCount: 5,
                      allowHalfRating: true,
                      spacing: 2.0,
                      onRated: (value) {
                        print("rating value -> $value");
                        // print("rating value dd -> ${value.truncate()}");
                      },
                    )),
                    Text("(340)"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Very Good : "),
                    Center(
                        child: SmoothStarRating(
                      rating: veryGood,
                      color: Colors.orange,
                      isReadOnly: false,
                      size: 20,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      defaultIconData: Icons.star_border,
                      starCount: 5,
                      allowHalfRating: true,
                      spacing: 2.0,
                      onRated: (value) {
                        print("rating value -> $value");
                        // print("rating value dd -> ${value.truncate()}");
                      },
                    )),
                    Text("(300)"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("         Good : "),
                    Center(
                        child: SmoothStarRating(
                      rating: good,
                      color: Colors.orange,
                      isReadOnly: false,
                      size: 20,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      defaultIconData: Icons.star_border,
                      starCount: 5,
                      allowHalfRating: true,
                      spacing: 2.0,
                      onRated: (value) {
                        print("rating value -> $value");
                        // print("rating value dd -> ${value.truncate()}");
                      },
                    )),
                    Text("(300)"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("    Average : "),
                    Center(
                        child: SmoothStarRating(
                      rating: good,
                      color: Colors.orange,
                      isReadOnly: false,
                      size: 20,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      defaultIconData: Icons.star_border,
                      starCount: 5,
                      allowHalfRating: true,
                      spacing: 2.0,
                      onRated: (value) {
                        print("rating value -> $value");
                        // print("rating value dd -> ${value.truncate()}");
                      },
                    )),
                    Text("(300)"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("          Poor : "),
                    Center(
                        child: SmoothStarRating(
                      rating: poor,
                      color: Colors.orange,
                      isReadOnly: false,
                      size: 20,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      defaultIconData: Icons.star_border,
                      starCount: 5,
                      allowHalfRating: true,
                      spacing: 2.0,
                      onRated: (value) {
                        print("rating value -> $value");
                        // print("rating value dd -> ${value.truncate()}");
                      },
                    )),
                    Text("(300)"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
