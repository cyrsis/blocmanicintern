import 'package:flutter/material.dart';


//You use borderRadius if you want to make the corner of the box rouned,
//
//    NB: borderRadius applies only to boxes with rectangular shapes.
//
//The value of the borderRadius is BorderRadius.all, BorderRadius.only, BorderRadius.circular, BorderRadius.horizontal, BorderRadius.vertical.
class AppBorderRadius {


  static get borderRadiusTopLeftBottomLeft => new BorderRadius.only(
  topLeft: new Radius.elliptical(40.0, 10.0),
  //topRight: new Radius.circular(20.0),
  //bottomRight: new Radius.circular(20.0),
  bottomLeft: new Radius.circular(20.0),
  );

  static get LeftRadius => new BorderRadius.horizontal(  //Creates a horizontally symmetrical border radius where the left and right sides of the rectangle have the same radii.
    left: new Radius.circular(20.0),
    //right: new Radius.circular(20.0),
  );

  static get HorizontalRadius => new BorderRadius.horizontal(
    left: new Radius.circular(20.0),
    //right: new Radius.circular(20.0),
  );

  static get EllipRadius => new BorderRadius.only(
    topLeft: new Radius.elliptical(40.0, 10.0),  //Radius.elliptical take 2 parameters x & y.
    //topRight: new Radius.circular(20.0),
    //bottomRight: new Radius.circular(20.0),
    bottomLeft: new Radius.circular(20.0),
  );




}
