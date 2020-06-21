import 'package:flutter/material.dart';
import 'package:tradeals/widgets/Homepage/homepage_Catalogues.dart';
import 'package:tradeals/widgets/Homepage/homepage_Featured.dart';
import 'package:tradeals/widgets/Homepage/homepage_bestsell.dart';
import 'package:tradeals/widgets/Homepage/homepage_department.dart';
import 'package:tradeals/widgets/drawer.dart';
import 'file:///F:/flutterworkshop/tradeals/lib/widgets/Homepage/homepagebanner.dart';
import 'file:///F:/flutterworkshop/tradeals/lib/widgets/Homepage/homepagecarousel.dart';
import 'package:tradeals/widgets/mainbottomnavigationbar.dart';

class AppHomepage extends StatefulWidget {
  @override
  _AppHomepageState createState() => _AppHomepageState();
}

class _AppHomepageState extends State<AppHomepage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
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
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Container(
        height: screenHeight,
        child: ListView(
          children: <Widget>[
            //homepage offering banner start here
            HomePageBanner(),
            //homepage Carousel  start here
            HomePageCarousel(),
            HomepageDepartment(),
            SizedBox(height: 40),
            HomePageCatalogues(),
            SizedBox(height: 40),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
