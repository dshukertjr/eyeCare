import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Icon(
          Icons.bookmark,
        ),
      ),
    );
  }
}
