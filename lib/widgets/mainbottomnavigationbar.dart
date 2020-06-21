import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
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
          icon: Icon(
            Icons.home,
            size: 25,
            color: Colors.orange,
          ),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.collections,
            size: 25,
            color: Colors.white,
          ),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.card_giftcard,
            size: 25,
            color: Colors.white,
          ),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            size: 25,
            color: Colors.white,
          ),
          title: SizedBox.shrink(),
        ),
      ],
    );
  }
}
