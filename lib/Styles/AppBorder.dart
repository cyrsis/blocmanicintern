import 'package:flutter/material.dart';

class AppBorder {
  static get BorderAllGreySolid1 =>
      Border.all(color: Colors.grey, style: BorderStyle.solid, width: 1.0);

  static get BorderAll1Black26 => Border.all(color: Colors.black26, width: 1.0);
  static get BorderAll =>
      new Border.all(color: Colors.green, width: 5.0, style: BorderStyle.solid);

  static get BorderTopGreen => new Border(
        top: new BorderSide(
            color: Colors.green, width: 5.0, style: BorderStyle.solid),
      );

  static get BorderDirectional => BorderDirectional(
        // BorderDirectional like the Border Class take 4 parameters, but instead left and right, it takes start and end.
        top: new BorderSide(
            color: Colors.green, width: 5.0, style: BorderStyle.solid),
        start: new BorderSide(
            color: Colors.green, width: 5.0, style: BorderStyle.solid),
      );

  static get OutLineInputBorder =>
      OutlineInputBorder(borderRadius: BorderRadius.circular(20.0));
}
