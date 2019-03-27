import 'package:flutter/material.dart';

Widget buildBorder(BuildContext context,
    {Widget child,
    double paddingBorder = 8.0,
    double edgeHeightFactor,
    Color color = Colors.black}) {
  final double height = MediaQuery.of(context).size.height;
  return Container(
    color: color,
    child: Padding(
      padding: EdgeInsets.fromLTRB(
        paddingBorder,
        paddingBorder,
        paddingBorder,
        paddingBorder + height * edgeHeightFactor,
      ),
      child: child,
    ),
  );
}
