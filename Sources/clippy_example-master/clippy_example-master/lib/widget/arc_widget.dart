import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';

class ArcWidget extends StatelessWidget {
  final Widget child;
  final List<Edge> edges;
  final double height;

  const ArcWidget({
    this.child,
    this.height = 40.0,
    this.edges = const [],
    Key key,
  }) : super(key: key);

  get image => Image.asset('images/example_3.jpg');

  @override
  Widget build(BuildContext context) {
    Widget arc = child ?? image;

    for (Edge edge in edges) {
      arc = Arc(
        height: height,
        child: arc,
        edge: edge,
      );
    }
    return arc;
  }
}
