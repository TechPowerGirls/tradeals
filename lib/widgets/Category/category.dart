import 'package:flutter/material.dart';
import 'package:tradeals/pages/department_page.dart';
import 'package:tradeals/pages/sub_category_page.dart';

import '../../styleguide.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
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
                  "Category",
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
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SubCategoryPage(),
                      ),
                    ),
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                          color: Color(0xFFF9A31A),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Indian Wear",
                          style: AppTheme.category_text,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SubCategoryPage(),
                      ),
                    ),
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                          color: Color(0xFF0C3853),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Indian Wear",
                          style: AppTheme.category_text,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SubCategoryPage(),
                      ),
                    ),
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                          color: Color(0xFF0C3853),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Indian Wear",
                          style: AppTheme.category_text,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SubCategoryPage(),
                      ),
                    ),
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                          color: Color(0xFF0C3853),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Indian Wear",
                          style: AppTheme.category_text,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}