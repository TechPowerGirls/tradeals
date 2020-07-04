import 'package:flutter/material.dart';
import 'package:tradeals/widgets/Department/department_category.dart';
import 'package:tradeals/widgets/Homepage/homepage_Catalogues.dart';
import 'package:tradeals/widgets/Homepage/homepage_department.dart';
import 'dart:math' as math;

import 'package:tradeals/widgets/Homepage/homepagebanner.dart';

import '../../styleguide.dart';

class DepartmentCollapsingList extends StatefulWidget {
  @override
  _DepartmentCollapsingListState createState() =>
      _DepartmentCollapsingListState();
}

class _DepartmentCollapsingListState extends State<DepartmentCollapsingList> {
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverBannerDelegate(
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
}

class _SliverBannerDelegate extends SliverPersistentHeaderDelegate {
  _SliverBannerDelegate({
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
  bool shouldRebuild(_SliverBannerDelegate oldDelegate) {
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
      delegate: _SliverBannerDelegate(
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
        SliverList(
          delegate: SliverChildListDelegate(
            [
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
        HomePageCatalogues(),

        // Yes, this could also be a SliverFixedExtentList. Writing
        // this way just for an example of SliverList construction.
      ],
    );
  }
}
