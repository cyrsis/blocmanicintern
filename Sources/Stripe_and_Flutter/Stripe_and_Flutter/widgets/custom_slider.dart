import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  CustomSlider(
      {Key key, this.initAmount, this.list, @required this.onAmountChange})
      : super(key: key);

  String initAmount;
  final List<double> list;
  final ValueChanged<String> onAmountChange;

  @override
  CustomSliderState createState() => new CustomSliderState();
}

class CustomSliderState extends State<CustomSlider> {
  // double amount = defAmountUSD;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: double.parse(widget.initAmount),
      min: widget.list[0],
      max: widget.list[1],
      semanticFormatterCallback: (double value) => value.round().toString(),
      label: '${double.parse(widget.initAmount).round()}',
      onChanged: (double value) {
        // amount = value.round().toDouble();
        widget.onAmountChange(double.parse(widget.initAmount).toString());
        setState(() {
          widget.initAmount = value.round().toDouble().toString();
          // widget.onAmountChange(amount.toString());
        });
      },
    );
  }
}
