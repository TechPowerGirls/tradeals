import 'package:flutter/material.dart';
import 'package:tradeals/pages/department_page.dart';
import 'package:tradeals/styleguide.dart';

class DepartmentCategory extends StatefulWidget {
  @override
  _DepartmentCategoryState createState() => _DepartmentCategoryState();
}

class _DepartmentCategoryState extends State<DepartmentCategory> {
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
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DepartmentPage(),
                      ),
                    ),
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                          color: Color(0xFF0C3853),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Image.asset(
                                "assets/images/icons/dep_clothing.png",
                                height: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "clothing",
                              style: AppTheme.category_text,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color(0xFFF9A31A),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(
                              "assets/images/icons/dep_clothing.png",
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "accessorize",
                            style: AppTheme.category_text,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color(0xFFF9A31A),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(
                              "assets/images/icons/dep_clothing.png",
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "shoes",
                            style: AppTheme.category_text,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color(0xFFF9A31A),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(
                              "assets/images/icons/dep_clothing.png",
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "bags",
                            style: AppTheme.category_text,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color(0xFFF9A31A),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(
                              "assets/images/icons/dep_clothing.png",
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Electronics",
                            style: AppTheme.category_text,
                          )
                        ],
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
