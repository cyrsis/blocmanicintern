import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_app/pages/home_page.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Phone App',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.orangeAccent,
        cardColor: Colors.brown,
      ),
      home: new MyHomePage(title: 'Phone App'),
    );
  }
}
