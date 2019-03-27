import 'package:clippy_example/widget/arc_widget.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';

class ArcTextWidget extends StatelessWidget {
  final String text;
  final Edge edge;
  static const double arcHeight = 50.0;

  const ArcTextWidget({
    @required this.text,
    this.edge = Edge.BOTTOM,
    Key key,
  }) : super(key: key);

  get image => Image.asset('images/example_3.jpg');

  @override
  Widget build(BuildContext context) => ArcWidget(
        child: Stack(children: <Widget>[
          image,
          buildEdge(context, child: buildText(context), edge: edge),
        ]),
        edges: [edge],
        height: arcHeight,
      );

  Widget buildText(BuildContext context) => Container(
        color: Colors.black.withOpacity(0.6),
        height: arcHeight,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .subtitle
                .copyWith(color: Colors.white),
          ),
        ),
      );

  Widget buildEdge(BuildContext context, {Widget child, Edge edge}) {
    switch (edge) {
      case Edge.BOTTOM:
        return Positioned.fill(top: null, child: child);
      case Edge.TOP:
        return Positioned.fill(bottom: null, child: child);
      case Edge.LEFT:
      case Edge.RIGHT:
      default:
        throw UnsupportedError('Left and right is not supported');
    }
  }
}
