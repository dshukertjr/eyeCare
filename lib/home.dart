import 'package:flutter/material.dart';

import 'page1.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: _body(),
      drawer: _drawer(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page1()),
          );
        },
      ),
    );
  }

  Widget _body() {
    return Center(
      child: Text("HomePage"),
    );
  }

  Drawer _drawer() {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Text("User Name"),
          ),
          Expanded(
                      child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text("Terms & Conditions"),
          )
        ],
      ),
    );
  }
}
