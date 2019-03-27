import 'package:flutter/material.dart';

class Utils {
  static Offset localPosition(BuildContext context, Offset globalPosition) {
    RenderBox getBox = context.findRenderObject();
    var localPosition = getBox.globalToLocal(globalPosition);
    return localPosition;
  }
}
