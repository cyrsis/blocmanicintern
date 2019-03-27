import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class ArrowPainter extends CustomPainter {
  static const double imageSize = 75.0;
  final ui.Image arrowImage;
  final Offset pointerOffset;

  const ArrowPainter({
    @required this.arrowImage,
    @required this.pointerOffset,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = size.center(Offset.zero);

    drawArrow(canvas, size, center);
    drawRect(canvas, center);
  }

  void drawArrow(Canvas canvas, Size size, Offset center) {
    const offsetImageX = -4.0;
    const offsetImageY = 16.0;
    final Offset centerArrow =
        center.translate(offsetImageX, -imageSize / 2 + offsetImageY);

    final double angle = atan2(
        pointerOffset.dy - centerArrow.dy, pointerOffset.dx - centerArrow.dx);

    canvas.save();
    canvas.translate(size.width / 2, size.height / 2);
    canvas.rotate(angle);
    canvas.translate(-size.width / 2, -size.height / 2);

    canvas.drawImage(arrowImage, centerArrow, Paint());
    canvas.restore();
  }

  void drawRect(Canvas canvas, Offset center) {
    final Paint fillPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.red;

    _drawRect(canvas, center, fillPaint);

    final Paint strokePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    _drawRect(canvas, center, strokePaint);
  }

  void _drawRect(Canvas canvas, Offset center, Paint strokePaint) {
    final centerImageSize = imageSize / 2;

    canvas.drawRect(
      Rect.fromPoints(
        center.translate(-centerImageSize, -centerImageSize),
        center.translate(centerImageSize, centerImageSize),
      ),
      strokePaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
