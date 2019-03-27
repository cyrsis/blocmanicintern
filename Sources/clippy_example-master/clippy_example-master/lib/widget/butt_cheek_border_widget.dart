import 'package:clippy_example/util.dart';
import 'package:clippy_flutter/buttcheek.dart';
import 'package:flutter/material.dart';

class ButtCheekBorderWidget extends StatelessWidget {
  static const double edgeHeightFactor = 0.04;

  @override
  Widget build(BuildContext context) => FractionallySizedBox(
      widthFactor: 0.8,
      child: ButtCheek(
        height: 20.0,
        child: buildBorder(
          context,
          color: Colors.black54,
          child: Image.asset('images/example_1.jpg'),
          edgeHeightFactor: edgeHeightFactor,
        ),
      ));
}

class ButtCheekImageBorderWidget extends StatelessWidget {
  static const double edgeHeightFactor = 0.04;

  final double strokeBorder;
  final Color color;

  const ButtCheekImageBorderWidget({
    this.strokeBorder = 4.0,
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttCheekHeight = 20.0;

    return FractionallySizedBox(
        widthFactor: 0.8,
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            ButtCheek(
              height: buttCheekHeight,
              child: Container(
                  padding: EdgeInsets.fromLTRB(
                      strokeBorder, strokeBorder, strokeBorder, 0.0),
                  color: color,
                  child: Image.asset('images/example_1.jpg')),
            ),
            Positioned.fill(
                top: null,
                child: ButtonCheekBorder(
                  height: buttCheekHeight,
                  color: color,
                  strokeBorder: strokeBorder,
                )),
          ],
        ));
  }
}

class ButtonCheekBorder extends StatelessWidget {
  final Color color;
  final double height;
  final double strokeBorder;

  const ButtonCheekBorder({
    @required this.color,
    @required this.height,
    @required this.strokeBorder,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CustomPaint(
        painter:
            ButtCheekBorderPainter(color: color, strokeBorder: strokeBorder),
        child: Container(height: height),
      );
}

class ButtCheekBorderPainter extends CustomPainter {
  final Color color;
  final double strokeBorder;

  const ButtCheekBorderPainter({this.color, this.strokeBorder = 5.0});

  @override
  void paint(Canvas canvas, Size size) {
    final yStart = size.height;

    final Path leftArc = Path()
      ..moveTo(0.0, -strokeBorder)
      ..quadraticBezierTo(
          size.width / 4, -strokeBorder, size.width / 2, yStart - strokeBorder)
      ..lineTo(size.width / 2, yStart)
      ..quadraticBezierTo(size.width / 4, 0.0, 0, 0.0);

    final Path rightArc = Path()
      ..moveTo(size.width / 2, yStart - strokeBorder)
      ..quadraticBezierTo(
          size.width * 3 / 4, -strokeBorder, size.width, -strokeBorder)
      ..lineTo(size.width, 0.0)
      ..quadraticBezierTo(size.width * 3 / 4, 0.0, size.width / 2, yStart);

    drawPath(canvas, leftArc);
    drawPath(canvas, rightArc);
  }

  drawPath(Canvas canvas, Path path) {
    canvas.drawPath(
      path.shift(Offset(0.0, strokeBorder)),
      Paint()
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.fill
        ..strokeWidth = 4.0
        ..color = color,
    );
    path.close();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
