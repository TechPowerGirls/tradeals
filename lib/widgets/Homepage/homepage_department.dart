import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeals/pages/department_page.dart';
import 'package:tradeals/styleguide.dart';

class HomepageDepartment extends StatefulWidget {
  @override
  _HomepageDepartmentState createState() => _HomepageDepartmentState();
}

class _HomepageDepartmentState extends State<HomepageDepartment> {
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
                  "Department",
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
                              "Women",
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
                            "Home",
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
                            "Mens",
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
                            "Kids",
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
