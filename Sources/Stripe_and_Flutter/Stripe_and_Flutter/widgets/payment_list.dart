import 'package:flutter/material.dart';
import 'package:samples/widgets/ExpansionItem.dart';
import 'package:samples/classes/PaymentItem.dart';

class PaymentsList extends StatefulWidget {
  const PaymentsList(this.data);

  final List<PaymentItem> data;

  @override
  PaymentListState createState() => PaymentListState();
}

class PaymentListState extends State<PaymentsList> {
  bool isListExpanded;

  @override
  void initState() {
    isListExpanded = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return paymentList(widget.data, isListExpanded);
  }
}

Widget paymentList(List<PaymentItem> data, bool expanded) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Your payments'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: PaymentWidget(data),
          // child: ExpansionPanelList(
          //   children: data.data.map<ExpansionPanel>((item) {
          //     return ExpansionPanel(
          //         isExpanded: !expanded,
          //         headerBuilder: (context, isExpanded) {
          //           return ListTile(
          //             leading: Text(item.currency),
          //             title: Text(item.amount.toString()),
          //             onTap: () {
          //               expanded = !expanded;
          //             },
          //           );
          //         },
          //         body: Text(data.toString()));
          //   }).toList(),
          // ),
        ),
      ));
}
