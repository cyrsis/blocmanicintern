import 'package:advent2_flip_animations/widget/flip_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'FlipAnimation';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primaryColor: Colors.red,
        textTheme: TextTheme(
          button: TextStyle(fontSize: 18.0),
        ),
      ),
      home: MainPage(appTitle: appTitle),
    );
  }
}

class MainPage extends StatefulWidget {
  final String appTitle;

  const MainPage({this.appTitle});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool flipped = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.appTitle),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlipWidget(
              from: image('images/image.jpg'),
              to: image('images/image_covered.jpg'),
              animationStatus:
                  flipped ? AnimationStatus.forward : AnimationStatus.reverse,
            ),
            SizedBox(height: 16.0),
            buildButton(context),
          ],
        )),
      );

  OutlineButton buildButton(BuildContext context) {
    final String buttonText = flipped ? 'Reverse flip' : 'Flip forward';

    return OutlineButton(
      onPressed: () {
        setState(() {
          flipped = !flipped;
        });
      },
      child: Text(buttonText),
      borderSide: BorderSide(
        width: 2.0,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget image(String imagePath) => ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          imagePath,
          width: 300.0,
          height: 300.0,
          fit: BoxFit.cover,
        ),
      );
}
