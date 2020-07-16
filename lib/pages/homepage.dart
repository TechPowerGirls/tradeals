import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeals/styleguide.dart';
import 'package:tradeals/widgets/Homepage/homepage_Catalogues.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:tradeals/widgets/Homepage/homepage_Featured.dart';
import 'package:tradeals/widgets/Homepage/homepage_bestsell.dart';
import 'package:tradeals/widgets/Homepage/homepage_department.dart';
import 'package:tradeals/widgets/drawer.dart';
import 'package:tradeals/widgets/Homepage/homepagebanner.dart';
import 'package:tradeals/widgets/Homepage/homepagecarousel.dart';
import 'dart:math' as math;
import 'package:tradeals/widgets/mainbottomnavigationbar.dart';

class AppHomepage extends StatefulWidget {
  @override
  _AppHomepageState createState() => _AppHomepageState();
}

class _AppHomepageState extends State<AppHomepage> {
  @override
  Widget build(BuildContext context) {
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
      body: CollapsingList(),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class CollapsingList extends StatefulWidget {
  @override
  _CollapsingListState createState() => _CollapsingListState();
}

class _CollapsingListState extends State<CollapsingList> {
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
          minHeight: 100.0,
          maxHeight: 100.0,
          child: Container(
            child: Column(
              children: <Widget>[
                HomePageBanner(),

                //homepage Carousel  start here
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        makeHeader('Header Section 1'),

        SliverToBoxAdapter(
          child: Container(
            child: Column(
              children: <Widget>[
                HomePageCarousel(),
                HomepageDepartment(),
                SizedBox(height: 10),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "filters",
                        style: AppTheme.filter_text,
                      ),
                      IconButton(
                        icon: Icon(Icons.filter),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

              ],
            ),

          ),

        ),
        HomePageCatalogues(),

        // Yes, this could also be a SliverFixedExtentList. Writing
        // this way just for an example of SliverList construction.
      ],
    );
  }
}
