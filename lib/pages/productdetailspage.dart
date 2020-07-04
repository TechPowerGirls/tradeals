import 'package:flutter/material.dart';
import 'package:tradeals/widgets/Homepage/homepagebanner.dart';
import 'package:tradeals/widgets/Homepage/homepagecarousel.dart';
import 'package:tradeals/widgets/mainbottomnavigationbar.dart';
import 'package:tradeals/widgets/products/product_description.dart';
import 'file:///F:/flutterworkshop/tradeals/lib/widgets/products/rating_widget.dart';
import 'file:///F:/flutterworkshop/tradeals/lib/widgets/products/review_widget.dart';

import '../styleguide.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(" Product Detail Page"),
        backgroundColor: Color(0xFF0C3853),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 10),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Product  name",
                                        style: AppTheme.catalogues_text,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$ 50",
                                        style: AppTheme.amount_text,
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          Container(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.orange,
                              ),
                            ),
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
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      HomePageCarousel(), //image Carosel
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 20,
                        color: Colors.pink,
                      ), //product color showing container

                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: <Widget>[
                                        Image.network(
                                          "https://static.thenounproject.com/png/36971-200.png",
                                          height: 20,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Download",
                                          style: AppTheme.sharing_text,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Image.network(
                                          "https://www.lanesfordrains.co.uk/wp-content/uploads/2016/11/facebook-icon-vector-png-17.jpg",
                                          height: 20,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Facebook",
                                          style: AppTheme.sharing_text,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Image.network(
                                          "https://i7.pngflow.com/pngimage/228/376/png-share-icon-social-media-computer-icons-social-networking-service-sharing-icon-social-media-share-icon-android-social-networking-service-clipart.png",
                                          height: 20,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Other",
                                          style: AppTheme.sharing_text,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Image.network(
                                        "https://cdn4.iconfinder.com/data/icons/social-media-2210/24/Whatsapp-512.png",
                                        height: 20,
                                      ),
                                      Text(
                                        "SHARE NOW",
                                        style: AppTheme.whatsapp_box,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ProductDescription(),
              CatalogRating(),
              CatloguesReview()
            ]),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
