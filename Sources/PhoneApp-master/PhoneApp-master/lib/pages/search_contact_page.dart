import 'package:flutter/material.dart';

class SearchContactPage extends StatefulWidget {
  @override
  _SearchContactPageState createState() => _SearchContactPageState();
}

class _SearchContactPageState extends State<SearchContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.cancel), onPressed: () {})
        ],
      ),
      body: Container(),
    );
  }
}
