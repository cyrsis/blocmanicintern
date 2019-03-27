import 'package:clippy_example/widget/arc_text_widget.dart';
import 'package:clippy_example/widget/arc_widget.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';

class ArcInteractWidget extends StatefulWidget {
  @override
  _ArcInteractWidgetState createState() => _ArcInteractWidgetState();
}

class _ArcInteractWidgetState extends State<ArcInteractWidget> {
  final List<Widget> arcs = [
    ArcWidget(edges: [Edge.TOP]),
    ArcTextWidget(
      text: 'Christmas',
      edge: Edge.TOP,
    ),
    ArcTextWidget(
      text: 'Christmas',
      edge: Edge.BOTTOM,
    ),
    ArcWidget(edges: [Edge.TOP, Edge.BOTTOM]),
  ];
  int currentArc = 0;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          setState(() {
            if (currentArc >= arcs.length - 1) {
              currentArc = 0;
            } else {
              currentArc++;
            }
          });
        },
        child: arcs[currentArc],
      );
}
