import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),

      ),
      body: Column(
        children: <Widget>[
          Text("landing page"),
          Text("login page"),
          Text("forgot password"),
          Text("Sign up"),
          Text("Product home page"),
          Text("product listing page"),
          Text("product detail page"),
          Text("cart page"),
          Text("orders page"),
          Text("profile page"),
          Text("wish list page"),
          Text("help page"),
          Text("favorite page"),









        ],
      ),
    );
  }
}
