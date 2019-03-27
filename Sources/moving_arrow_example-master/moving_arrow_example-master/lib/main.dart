import 'package:advent23_moving_arrow/widget/arrow_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'MovingArrow';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ArrowScreen(),
      );
}
