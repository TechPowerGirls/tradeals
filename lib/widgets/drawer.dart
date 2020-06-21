import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //header
        UserAccountsDrawerHeader(
          accountName: Text("usename"),
          accountEmail: Text("User@abc.com"),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Color(0xFF0C3853),
                size: 50,
              ),
            ),
          ),
          decoration: BoxDecoration(color: Color(0xFF0C3853)),
        ),
        // body
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Home Page"),
            leading: Icon(
              Icons.home,
              color: Color(0xFFF9A31A),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("My Account"),
            leading: Icon(
              Icons.person,
              color: Color(0xFFF9A31A),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("My orders"),
            leading: Icon(
              Icons.shopping_basket,
              color: Color(0xFFF9A31A),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("category"),
            leading: Icon(
              Icons.dashboard,
              color: Color(0xFFF9A31A),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("favourite"),
            leading: Icon(
              Icons.favorite,
              color: Color(0xFFF9A31A),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Settings"),
            leading: Icon(
              Icons.settings,
              color: Color(0xFFF9A31A),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("About"),
            leading: Icon(
              Icons.help,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
