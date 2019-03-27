import 'package:flutter/material.dart';
import 'screens/swipe_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorBrightness: Brightness.light
      ),
      home: SwipeScreen(),
    );
  }
}