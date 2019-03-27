import 'package:flutter/material.dart';
import 'package:samples/utilities/CommonFunctions.dart';
import 'package:samples/utilities/CurrentUser.dart';
import 'package:samples/widgets/buy_dialog.dart';
import 'package:samples/streams/transactions.dart';

class Options extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UserOptions();
  }
}

String _currency;
String _amount;

class UserOptions extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton.icon(
            label: Text(
              'Refund',
              textScaleFactor: 1.1,
              style: TextStyle(
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            ),
            icon: const Icon(
              Icons.bug_report,
              color: Colors.redAccent,
            ),
            onPressed: () {
              print('Ref iD : ' + refundID);
              refundDocument.setData({'chargeId': refundID});
            },
          ),
          Material(
            shape: StadiumBorder(),
            color: Colors.transparent,
            child: FlatButton.icon(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              label: Text(
                'Buy',
                textScaleFactor: 1.1,
                style: TextStyle(
                    letterSpacing: 0.3,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              icon: const Icon(
                Icons.attach_money,
                color: Colors.green,
              ),
              onPressed: () async {
                return await showBuyDialog(
                    context: context,
                    child: AlertDialog(
                        title: const Text('Ready to Buy?'),
                        content: BuyDialog(
                          currencies: currencyList,
                          onCurrencyChange: (currency) {
                            _currency = currency;
                          },
                          onFinalAmount: (amount) {
                            _amount = amount;
                          },
                        ),
                        actions: <Widget>[
                          FlatButton(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              child: const Text('DISAGREE'),
                              onPressed: () {
                                Navigator.pop(context, false);
                              }),
                          FlatButton(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              child: const Text('AGREE'),
                              onPressed: () {
                                Navigator.pop(context, true);
                              })
                        ])).then((value) {
                  // assert(value[1] is String);
                  final amount = double.parse(value[1]).round();
                  buyDocument.setData({
                    'currency': value[0],
                    'amount': amount,
                    'description': 'Charging ${value[0]}:$amount for buying...'
                  });
                });
              },
            ),
          ),
        ],
      ),
      shape: CircularNotchedRectangle(),
    );
  }
}

Future showBuyDialog({BuildContext context, Widget child}) {
  return showDialog<bool>(
    context: context,
    builder: (BuildContext context) => child,
  ).then((bool result) {
    // The value passed to Navigator.pop() or null.
    if (result != null && result == true) {
      List values = new List();
      String curr = _currency != null ? _currency : usd;
      values.add(curr);

      String amt = _amount != null ? _amount : defAmount.toString();
      values.add(amt);

      return values;
    } else {
      return null;
    }
  });
}
