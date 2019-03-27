import 'package:flutter/material.dart';

class SpeedDialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1.0),
      children: _buildChildren(context),
      shrinkWrap: true,
    );
  }

  List<Widget> _buildChildren(BuildContext context) {
    var widgets = <Widget>[];
    for (int i = 0; i < 10; i++) {
      widgets.add(Container(
        width: MediaQuery.of(context).size.width / 2,
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          child: Text('$i'),
          backgroundColor: Colors.brown,
        ),
      ));
    }
    return widgets;
  }
}
