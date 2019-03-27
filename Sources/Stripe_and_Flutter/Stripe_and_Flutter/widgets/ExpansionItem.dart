import 'package:flutter/material.dart';
import 'package:samples/classes/PaymentItem.dart';

// typedef ValueToString<T> = String Function(T value);

class PaymentWidget extends StatefulWidget {
  PaymentWidget(this.data);

  final List<PaymentItem> data;

  PaymentListState createState() => new PaymentListState(data);
}

class PaymentListState extends State<PaymentWidget> {
  PaymentListState(this.data);
  final List<PaymentItem> data;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool expanded) {
        setState(() {
          data[index].isExpanded = !data[index].isExpanded;
        });
      },
      children: data.map((PaymentItem item) {
        return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return InkWell(
                child: ListTile(
                  leading: const Icon(
                    Icons.monetization_on,
                    color: Colors.green,
                  ),
                  title: Text(item.header),
                  subtitle: Text(item.ccy),
                  trailing: Text(item.status),
                ),
                onTap: () {
                  Navigator.pop(context, item.body.key.toString().replaceAll('[<\'', '').replaceAll('\'>]', ''));
                },
              );
            },
            isExpanded: item.isExpanded,
            body: item.body);
      }).toList(),
    );
  }
}
