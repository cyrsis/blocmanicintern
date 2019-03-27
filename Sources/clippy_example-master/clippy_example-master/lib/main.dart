import 'package:clippy_example/widget/arc_interact_widget.dart';
import 'package:clippy_example/widget/butt_cheek_border_widget.dart';
import 'package:clippy_example/widget/message_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const String appTitle = 'MainPage';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(scaffoldBackgroundColor: Colors.orange[200]),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  final Map<String, Widget> widgetTabs = {
    'Arc Types': ArcInteractWidget(),
    'Message box': MessageWidget(),
    'And more forms!': ButtCheekImageBorderWidget(
      strokeBorder: 4.0,
      color: Colors.white,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: widgetTabs.length,
        child: TabBarView(
            children: widgetTabs.keys
                .map((key) => Column(
                      children: <Widget>[
                        Text(key, style: Theme.of(context).textTheme.headline),
                        SizedBox(height: 8.0),
                        widgetTabs[key],
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
                .toList()),
      ),
    );
  }
}
