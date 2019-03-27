import 'package:clippy_example/util.dart';
import 'package:clippy_flutter/message.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  static const double edgeHeightFactor = 0.04;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Message(
      triangleX1: 0.6 * width,
      triangleX2: 0.7 * width,
      triangleX3: 0.7 * width,
      triangleY1: height * edgeHeightFactor,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: buildBorder(
          context,
          child: Image.asset(
            'images/example_2.jpg',
          ),
          edgeHeightFactor: edgeHeightFactor,
        ),
      ),
    );
  }
}
