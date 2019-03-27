import 'package:flutter/material.dart';

class AppBoxShadow {


  static get RedoffSet => new BoxShadow(
    color: Colors.red,
    offset: new Offset(20.0, 10.0), //moved the shadow 20 on the X axis and 10 on the Y axis
  );

 static get BlurRadius => new BoxShadow(
     color: Colors.red,
     offset: new Offset(20.0, 10.0),
     blurRadius: 20.0,
     spreadRadius: 40.0
 );

}
