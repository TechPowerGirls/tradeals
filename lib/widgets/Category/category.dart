import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeals/models/subcategory.dart';
import 'package:tradeals/pages/department_page.dart';
import 'package:tradeals/pages/sub_category_page.dart';
import 'package:tradeals/services/apiServices.dart';

import '../../styleguide.dart';

class Category extends StatefulWidget {
  final productDeptId;
  final productCategoryId;

  Category(this.productDeptId, this.productCategoryId);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  ApiService apiService = ApiService();
  List<SubCategory> subcat;

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
                  "SubCategory",
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
            child: FutureBuilder(
                future: apiService.getSubcat(
                    widget.productDeptId, widget.productCategoryId),
                builder: (_, snapshot) {
                  if (snapshot.hasData) {
                    subcat = snapshot.data;
                    return Container(
                      height: 60,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: subcat.isEmpty ? 0 : subcat.length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Color(0xFFF9A31A),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    subcat[index].productSubCategory,
                                    // "test",

                                    style: AppTheme.category_text,
                                  ),

                                ),
                              ),
                            );
                          }
                      ),
                    );
                  } else {
                    return Text(snapshot.error.toString());
                  }
                }
            ),
          )
          /* Container(
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


              ],
            ),
          )*/
        ],
      ),
    );
  }
}
