import 'package:flutter/material.dart';

class BottomNavigationFilter extends StatefulWidget {
  @override
  _BottomNavigationFilterState createState() => _BottomNavigationFilterState();
}

class _BottomNavigationFilterState extends State<BottomNavigationFilter> {
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _selectedIndex = 0;
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      key: _bottomNavigationKey,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff0C3853),
      //const Color(0xff0C3853),

      currentIndex: _currentTab,
      onTap: (int value) {
        setState(() {
          _currentTab = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Container(
            child: Icon(
              Icons.sort,
              size: 25,
              color: Colors.orange,
            ),
          ),
          title: Text(
            "Sort",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 14,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.filter,
            size: 25,
            color: Colors.white,
          ),
          title: Text(
            "Filter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
    ;
  }
}
