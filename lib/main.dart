import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';


// void main() => runApp(MyApp());


void main() async {
      await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ThemeData _buildTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      primaryColor: Colors.orange,
      accentColor: Colors.cyan[400],
      scaffoldBackgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starter Template',
      theme: _buildTheme(),
      home: HomePage(),
    );
  }
}
