import 'package:flutter/material.dart';

import './AppUtils.dart';

class AppGradient {
  static final LinearGradientOrangeRed = new LinearGradient(
    colors: const [const Color(0xFFfbab66), const Color(0xFFf7418c)],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static final LinearGradientAzure = new LinearGradient(colors: [
    Color.fromRGBO(70, 210, 253, 100),
    Color.fromRGBO(83, 81, 240, 100)
  ], begin: Alignment.topLeft, end: Alignment.bottomCenter);

  static final LinearGradientAzureLeftRight = new LinearGradient(colors: [
    Color.fromRGBO(70, 210, 253, 100),
    Color.fromRGBO(83, 81, 240, 100)
  ], begin: Alignment.centerLeft, end: Alignment.center);

  static final LinearGradientPearl = new LinearGradient(colors: [
    Color.fromRGBO(236, 240, 245, 100),
    Color.fromRGBO(204, 214, 230, 100)
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static final LinearGradientIvory = new LinearGradient(colors: [
    Color.fromRGBO(250, 247, 250, 100),
    Color.fromRGBO(239, 240, 241, 100)
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static final LinearGradientAquaTopToBottomRight = new LinearGradient(colors: [
    Color(AppUtils().HexToColor("2DC9EB")),
    Color(AppUtils().HexToColor("14D2B8"))
  ], begin: Alignment.topCenter, end: Alignment.bottomRight);

  static final LinearGradientAqua = new LinearGradient(colors: [
    Color(AppUtils().HexToColor("2DC9EB")),
    Color(AppUtils().HexToColor("14D2B8"))
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static final LinearGradientBlush = new LinearGradient(colors: [
    Color(AppUtils().HexToColor("FF8298")),
    Color(AppUtils().HexToColor("FFA073"))
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static final LinearGradient AppBarLinearGradient = new LinearGradient(
      colors: [const Color(0xFF3366FF), const Color(0xFF00CCFF)],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(1.0, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  static final LinearGradient AppBarLinearGradientAlignment =
      new LinearGradient(
          colors: [Colors.red, Colors.cyan],
          begin: Alignment.centerRight,
          end: new Alignment(-1.0, -1.0));

  static final LinearGradient AppBarLinearGradientCenterRight =
      new LinearGradient(
          colors: [Colors.red, Colors.cyan],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft);

  static final LinearGradient AppBarLinearGradientRepeat = new LinearGradient(
      colors: [Colors.red, Colors.cyan],
      begin: Alignment.centerRight,
      end: new Alignment(0.8, 0.0),
      tileMode: TileMode.repeated //Default is clamp
      );

  static final LinearGradient AppBarLinearGradientStops = new LinearGradient(
      colors: [Colors.red, Colors.cyan, Colors.purple, Colors.lightGreenAccent],
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      tileMode: TileMode.clamp,
      stops: [0.3, 0.5, 0.6, 0.7]);

  static final RadialGradient RadialGradientStops = new RadialGradient(
      colors: [Colors.red, Colors.cyan, Colors.purple, Colors.lightGreenAccent],
      center: Alignment(-0.7, -0.6),
      radius: 0.2,
      // if a radial gradient is painted on a box that is 200.0 wide, then a radius of 0.2 is equal to 40.0
      tileMode: TileMode.clamp,
      stops: [0.3, 0.5, 0.6, 0.7]);

  static final RadialGradient RadialGradientComplete = new RadialGradient(
      colors: [Colors.red, Colors.cyan, Colors.purple, Colors.lightGreenAccent],
      center: Alignment(-0.7, -0.6),
      //(The center of the gradient, as an offset into the (-1.0, -1.0) x (1.0, 1.0) square describing the gradient which will be mapped onto the paint box)
      radius: 0.2,
      // if a radial gradient is painted on a box that is 200.0 wide, then a radius of 0.2 is equal to 40.0
      tileMode: TileMode.clamp,
      stops: [0.3, 0.5, 0.6, 0.7]);

  static final RadialGradient RadialGradientCircle = new RadialGradient(
      colors: [Colors.red, Colors.cyan, Colors.purple, Colors.lightGreenAccent],
      center: Alignment(-0.7, -0.6),
      radius: 0.2,
      tileMode: TileMode.clamp,
      stops: [0.3, 0.5, 0.6, 0.7]);

  static final LinearGradient AppBarLinearWarmGradient = new LinearGradient(
      colors: [
        Color(AppUtils().HexToColor("FAD0C4")),
        Color(AppUtils().HexToColor("FF9A9E"))
      ],
      begin: const FractionalOffset(1.0, 0.0),
      end: const FractionalOffset(0.0, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  static final LinearGradient AppBarLinearNightFadeGradient =
      new LinearGradient(
          colors: [
            Color(AppUtils().HexToColor("FBC2EB")),
            Color(AppUtils().HexToColor("A18CD1"))
          ],
          begin: const FractionalOffset(0.5, 0.0),
          end: const FractionalOffset(0.5, 1.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp);

  static final LinearGradient LinearGradientPinkBlueAccent = new LinearGradient(
      colors: [Colors.pink, Colors.blueAccent],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(0.6, 0.0),
      stops: [0.0, 0.6],
      tileMode: TileMode.clamp);

  static get LinearRedOrgane => LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.7],
        colors: [
          Color(0xFFF12711),
          Color(0xFFf5af19),
        ],
      );
}
