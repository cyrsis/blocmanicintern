import 'package:flutter/material.dart';
import 'package:samples/responses/charges_resp.dart';

class PaymentItem {
  bool isExpanded;
  final String header;
  final String ccy;
  final String status;
  final Widget body;

  PaymentItem(this.isExpanded, this.header, this.ccy, this.status, this.body);
}

List<PaymentItem> convertListToWidget(ChargesJSON response) {
  List<Data> list = response.data;
  List<PaymentItem> items = [];

  for (var entry in list) {
    items.add(new PaymentItem(
      false,
      (entry.amount / 100).toString(),
      entry.currency.toUpperCase(),
      entry.object != null ? entry.object : '???',
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text('Cust ID : ' + entry.id),
        key: Key(entry.id),
      ),
    ));
  }
  return items;
}
