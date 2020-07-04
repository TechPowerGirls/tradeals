import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../styleguide.dart';

class CatloguesReview extends StatefulWidget {
  @override
  _CatloguesReviewState createState() => _CatloguesReviewState();
}

class _CatloguesReviewState extends State<CatloguesReview> {
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
                "Catlouge Review",
                style: AppTheme.catalogues_text,
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "customer name",
                              style: AppTheme.Customer_name,
                            ),
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
                            Text("2 days", style: AppTheme.Customer_name)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("it is very good product")
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "customer name",
                              style: AppTheme.Customer_name,
                            ),
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
                            Text("2 days", style: AppTheme.Customer_name)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("it is very good product")
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "customer name",
                              style: AppTheme.Customer_name,
                            ),
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
                            Text("2 days", style: AppTheme.Customer_name)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("it is very good product")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
