import 'package:flutter/material.dart';

class AppAlignment {
  //Alignment is -1.0 to 1
  //Fractionaloffset 0.0 to 1.0

  //Alignment        => x(left:-1.0 -> Right: 1.0) , y (Top:-1.0,Bottom:1.0)
  //FractionalOffSet => x(left:0.0 -> Right: 1.0) , y (Top:0.0,Bottom:1.0)
  //TextDirection.ltr -> Start from Left to Right
  //TextDirection.ltr -> Start from Right to left

  get center => Alignment(0.0, 0.0); //Center of the box

  get topLeft => Alignment(-1.0, -1.0); // top left of the rectangle.
  get topLeftFraction => FractionalOffset(0.0, 0.0);

  get topRight => FractionalOffset(1.0, 0.0);

  get topCenter => FractionalOffset(0.5, 0.0);

  get bottomRight => Alignment(1.0, 1.0);

  get bottomRightFraction => FractionalOffset(1.0, 1.0);

  get bottomReft => FractionalOffset(0.0, 1.0);

  get bottomCenter => Alignment(0.0, 1.0);

  get bottomCenterFraction => FractionalOffset(0.5, 1.0);

  get alignmentcenter => Alignment(0.0, 0.0);

  get centerFraction => FractionalOffset(0.5, 0.5);

  get centerLeft => FractionalOffset(0.0, 0.5);

  get centerRight => FractionalOffset(1.0, 0.5);
}
