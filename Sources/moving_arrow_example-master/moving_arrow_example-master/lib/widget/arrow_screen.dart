import 'dart:ui' as ui;

import 'package:advent23_moving_arrow/utils/image_utils.dart';
import 'package:advent23_moving_arrow/utils/utils.dart';
import 'package:advent23_moving_arrow/widget/arrow_painter.dart';
import 'package:flutter/material.dart';

class ArrowScreen extends StatefulWidget {
  @override
  ArrowScreenState createState() => ArrowScreenState();
}

class ArrowScreenState extends State<ArrowScreen> {
  ui.Image image;
  Offset pointerOffset = Offset.zero;

  @override
  void initState() {
    super.initState();
    getImage('images/arrow.png').then((image) {
      setState(() {
        this.image = image;
      });
    });
  }

  @override
  Widget build(BuildContext context) => image == null
      ? Container()
      : GestureDetector(
          child: CustomPaint(
            foregroundPainter:
                ArrowPainter(arrowImage: image, pointerOffset: pointerOffset),
            child: Container(color: Colors.transparent),
          ),
          onPanStart: onPanStart,
          onPanUpdate: onPanUpdate,
        );

  void onPanStart(DragStartDetails details) =>
      updatePoint(details.globalPosition);

  void onPanUpdate(DragUpdateDetails details) =>
      updatePoint(details.globalPosition);

  void updatePoint(Offset globalPosition) {
    final Offset offset = Utils.localPosition(context, globalPosition);
    setState(() {
      pointerOffset = offset;
    });
  }
}
