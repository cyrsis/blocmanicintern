import 'package:flutter/material.dart';

class IncomingCallPage extends StatefulWidget {
  @override
  _IncomingCallPageState createState() => _IncomingCallPageState();
}

class _IncomingCallPageState extends State<IncomingCallPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Theme.of(context).backgroundColor,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Theme.of(context).cardColor,
                    child: Icon(
                      Icons.call_end,
                      color: Colors.red,
                    ),
                  ),
                  Draggable(
                    axis: Axis.horizontal,
                    feedback: FloatingActionButton(
                        child: Icon(Icons.call), onPressed: () {}),
                    childWhenDragging: CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Theme.of(context).cardColor,
                    ),
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Theme.of(context).cardColor,
                      child: FloatingActionButton(
                          child: Icon(Icons.call), onPressed: () {}),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Theme.of(context).cardColor,
                    child: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 300.0,
          width: double.infinity,
          color: Colors.black,
        ),
        Container(
          height: 400.0,
          width: double.infinity,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Center(
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).cardColor,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).cardColor,
                    radius: 100.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
