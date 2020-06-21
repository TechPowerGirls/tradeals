import 'package:flutter/material.dart';

class DepartmentCatlogues extends StatefulWidget {
  @override
  _DepartmentCatloguesState createState() => _DepartmentCatloguesState();
}

class _DepartmentCatloguesState extends State<DepartmentCatlogues> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(color: Colors.pink, height: 150.0),
          Container(color: Colors.cyan, height: 150.0),
          Container(color: Colors.indigo, height: 150.0),
          Container(color: Colors.blue, height: 150.0),
        ],
      ),
    );
  }
}
