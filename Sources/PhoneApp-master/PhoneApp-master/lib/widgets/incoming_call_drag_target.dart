import 'package:flutter/material.dart';

class IncomingCallDragTarget extends StatelessWidget {
  final IconData icon;
  final Color color;

  IncomingCallDragTarget({@required this.icon, @required this.color});

  @override
  Widget build(BuildContext context) {
    return DragTarget(builder: (context, List<Widget> accepted, rejected) {
      return CircleAvatar(
        radius: 30.0,
        backgroundColor: Theme.of(context).cardColor,
        child: Icon(
          icon,
          color: color,
        ),
      );
    });
  }
}
