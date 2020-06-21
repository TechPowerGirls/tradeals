import 'package:flutter/material.dart';
import 'package:tradeals/pages/homepage.dart';
import 'package:tradeals/widgets/Department/department_category.dart';
import 'package:tradeals/widgets/Homepage/homepagebanner.dart';
import 'package:tradeals/widgets/drawer.dart';
import 'package:tradeals/widgets/mainbottomnavigationbar.dart';

class DepartmentPage extends StatefulWidget {
  @override
  _DepartmentPageState createState() => _DepartmentPageState();
}

class _DepartmentPageState extends State<DepartmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Department Page"),
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
      body: Column(
        children: <Widget>[
          HomePageBanner(),
          DepartmentCategory(),
        ],
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
