import 'package:flutter/material.dart';

//For Shape Propertes
class AppShape {
  static get FabSquare => RoundedRectangleBorder();

  static get RoundRadius16 => RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16.0)));

  static get FabSquareRadius => RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16.0)));

  static get FabSquareBorder =>
      RoundedRectangleBorder(side: BorderSide(color: Colors.pink, width: 4.0));

  static get FabDiamonBorder => DiamondBorder();

  static get RoundBorderRadius10 =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0));

  static get RoundBorderRadius7 => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      );

  static get RoundBorderRadius3 => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      );

  static get DiamonBorder => DiamondBorder();

  static get Stadium => new StadiumBorder();
}

class DiamondBorder extends ShapeBorder {
  const DiamondBorder();

  @override
  EdgeInsetsGeometry get dimensions {
    return const EdgeInsets.only();
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..moveTo(rect.left + rect.width / 2.0, rect.top)
      ..lineTo(rect.right, rect.top + rect.height / 2.0)
      ..lineTo(rect.left + rect.width / 2.0, rect.bottom)
      ..lineTo(rect.left, rect.top + rect.height / 2.0)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  // This border doesn't support scaling.
  @override
  ShapeBorder scale(double t) {
    return null;
  }
}
