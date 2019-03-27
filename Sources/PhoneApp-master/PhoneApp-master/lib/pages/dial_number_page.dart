import 'package:flutter/material.dart';

class DialNumberPage extends StatefulWidget {
  @override
  _DialNumberPageState createState() => _DialNumberPageState();
}

class _DialNumberPageState extends State<DialNumberPage> {
  static List<String> numbers = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '*',
    '0',
    '#'
  ];

  static List<String> letters = [
    '',
    'ABC',
    'DEF',
    'GHI',
    'JKL',
    'MNO',
    'PQRS',
    'TUV',
    'WXYZ',
    '',
    '+',
    ''
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black87,
          ),
          _buildKeypad(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: FloatingActionButton(
                onPressed: () {},
                tooltip: 'Call Number',
                child: Icon(Icons.call),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKeypad() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Theme.of(context).backgroundColor,
        height: 450.0,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: IgnorePointer(
                child: TextField(
                  style: TextStyle(fontSize: 40.0),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              trailing: IconButton(icon: Icon(Icons.cancel), onPressed: () {}),
            ),
            Divider(
              height: 5.0,
            ),
            Container(
              height: 300.0,
              width: 220.0,
              padding: EdgeInsets.all(8.0),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: 1.0,
                ),
                children: _buildDialKeys(),
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildDialKeys() {
    var keys = <Widget>[];
    for (int i = 0; i < numbers.length; i++) {
      keys.add(
        Container(
//          width: 30.0,
//          height: 30.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Theme.of(context).accentColor)),
          child: GestureDetector(
            onTap: () {},
            onLongPress: () {},
            child: Column(
              children: [
                Text(
                  numbers.elementAt(i),
                  style: TextStyle(fontSize: 30.0),
                ),
                i == 0
                    ? Icon(
                        Icons.voicemail,
                        size: 8.0,
                      )
                    : Text(letters.elementAt(i),
                        style: TextStyle(fontSize: 8.0)),
              ],
            ),
          ),
        ),
      );
    }
    return keys;
  }
}
