import 'package:flutter/material.dart';
import 'package:samples/utilities/CommonFunctions.dart'
    show min, max, usd, defAmount;
import 'package:samples/widgets/custom_slider.dart';

class BuyDialog extends StatefulWidget {
  BuyDialog(
      {Key key, this.currencies, this.onCurrencyChange, this.onFinalAmount})
      : super(key: key);

  final List<String> currencies;
  final ValueChanged<String> onCurrencyChange;
  final ValueChanged<String> onFinalAmount;

  @override
  BuyDialogContentState createState() => new BuyDialogContentState();
}

String initVal = usd;
String _currValue = defAmount.toString();

class BuyDialogContentState extends State<BuyDialog> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: const Text('Currency:'),
          trailing: DropdownButton<String>(
            value: initVal,
            hint: const Text('Choose'),
            onChanged: (String newValue) {
              setState(() {
                initVal = newValue;
                widget.onCurrencyChange(initVal);
              });
            },
            items:
                widget.currencies.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        ListTile(
          title: const Text('Amount:'),
          trailing: Text(_currValue.toString()),
        ),
        CustomSlider(
          list: [min, max],
          initAmount: _currValue,
          onAmountChange: (amount) => setState(() {
                _currValue = amount;
                widget.onFinalAmount(_currValue);
              }),
        ),
        // Slider(
        //   value: _currValue,
        //   min: min,
        //   max: max,
        //   semanticFormatterCallback: (double value) => value.round().toString(),
        //   label: '${_currValue.round()}',
        //   onChanged: (double value) {
        //     setState(() {
        //       _currValue = value.round().toDouble();
        //     });
        //     // widget.onCurrencyChange(_currValue.toString());
        //   },
        // ),
      ],
    );
  }
}
