import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:tradeals/models/Department.dart';
import 'package:tradeals/pages/department_page.dart';
import 'package:tradeals/styleguide.dart';
import 'package:http/http.dart' as http;

class HomepageDepartment extends StatefulWidget {
  @override
  _HomepageDepartmentState createState() => _HomepageDepartmentState();
}

class _HomepageDepartmentState extends State<HomepageDepartment> {
  List list = List();
  List departments = List();

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
    final response = await http.get(
        "http://103.68.36.251/TraDealSquareAPI/Api/WebApi/GetProductDepartments");
    if (response.statusCode == 200) {
      list = json.decode(response.body) as List;
      print('list[0] = ${list[0]}');
      print('list= $list');

      for (var department in list) {
        departments.add(Department.fromJson(department));
      }
      print('departments length = ${departments.length}');

      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load photos');
    }
    print("Department list : $departments");
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
                  "Department",
                  style: AppTheme.section_heading,
                ),
                Text(
                  "See All",
                  style: AppTheme.See_all,
                ),
              ],
            ),
          ), //line heading
          //department category list start here
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: departments == null ? 0 : departments.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            DepartmentPage(
                                departments[index].productDepartmentId), //(),

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
                              padding: const EdgeInsets.only(top: 8),
                              child: Image.network(
                                departments[index].productDepartmentImage,
                                height: 100,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              departments[index].productDepartment,
                              //"Women",
                              style: AppTheme.category_text,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}