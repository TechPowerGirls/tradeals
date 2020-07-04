import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test page'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.green,
          child: Text('Test Page '),
        ),
      ),
    );
  }
}
