import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tradeals/models/category.dart';
import 'package:tradeals/pages/category_page.dart';
import 'package:tradeals/pages/department_page.dart';
import 'package:tradeals/styleguide.dart';
import 'package:http/http.dart' as http;

class DepartmentCategory extends StatefulWidget {

  final productDeptId;

  DepartmentCategory(this.productDeptId);

  @override
  _DepartmentCategoryState createState() => _DepartmentCategoryState();
}

class _DepartmentCategoryState extends State<DepartmentCategory> {
  int userSelectedDeptId = -9223372036854775750;

  List list = List();
  List categories = List();

  var isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }


  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    print('Calling API');
    final response =
    await http.get(
        "http://188.95.36.102:86/Api/WebApi/"
            "GetAllProductCategories?ProductDepartmentId=${widget
            .productDeptId}");
    if (response.statusCode == 200) {
      print('response.statusCode = ${response.statusCode}');
      int responseLength = response.body.length;
      print('responseLength = $responseLength');
      print('response.body = ${response.body}');
      if (responseLength == 2) {
        print('no api data for this ${widget.productDeptId}');
        setState(() {
          isLoading = false;
        });
        throw Exception('No api data for this ${widget.productDeptId}');
      }

      list = json.decode(response.body) as List;
      print('list[0] = ${list[0]}');
      print('list= $list');


      for (var cat in list) {
        // print ('var = ${album} ') ;
        categories.add(Category.fromJson(cat));
      }
      print('departments length = ${categories.length}');

      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception(
          'Failed to load categories for dept id: $userSelectedDeptId');
    }
  }

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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DepartmentPage(product.ProductName),
                      ),
                    ),*/ //onTap
                    child: InkWell(
                      onTap: () =>
                          Navigator.push(context, MaterialPageRoute(
                            builder: (_) =>
                                CategoryPage(
                                    widget.productDeptId,
                                    categories[index].productCategoryId),
                          )),
                      child: Container(
                        width: 130,
                        decoration: BoxDecoration(
                            color: Color(0xFF0C3853),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              /* Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.network(
                                  widget.category["CategoryImage"],
                                  //"assets/images/icons/dep_clothing.png",
                                  height: 50,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),*/ //image
                              Text(
                                //widget.Category["CategoryName"],
                                // "clothing",
                                categories[index].productCategory,
                                style: AppTheme.category_text,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: categories.length,
            ),
          )
        ],
      ),
    );
  }
}

/*

 children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DepartmentPage(product.ProductName),
                      ),
                    ),*/
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
                              child: Image.asset(widget.dept["CategoryImage"],
                                //"assets/images/icons/dep_clothing.png",
                                height: 50,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(widget.dept["CategoryName"],
                             // "clothing",
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
                            child: Image.network(
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
 */