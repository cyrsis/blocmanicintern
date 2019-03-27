import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stripe_payment/stripe_payment.dart';
import 'package:samples/utilities/CurrentUser.dart';
import 'package:samples/utilities/CommonFunctions.dart';
import 'package:samples/widgets/bottom_baroptions.dart';
import 'package:samples/widgets/fab_options.dart';

class DetailScreen extends StatefulWidget {
  final String title = 'Detail Screen';
  final FirebaseUser loggedInUser;
  final GoogleSignInAccount user;

  DetailScreen({Key key, @required this.loggedInUser, this.user})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ArticlesScreen();
  }
}

class ArticlesScreen extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();
    fetchUser();
    StripeSource.setPublishableKey(CurrentUser.key);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        // automaticallyImplyLeading: false,
      ),
      body: StreamBuilder(
        stream: fInstance.collection('flutter').snapshots(),
        builder: (_, __) {
          if (!__.hasData) {
            return const Text('Loading data');
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: GoogleUserCircleAvatar(
                  identity: widget.user,
                ),
              ),
              Expanded(
                  child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => Divider(
                      color: Colors.indigo[800],
                    ),
                itemCount: __.data.documents.length,
                itemBuilder: (context, index) =>
                    buildBody(context, __.data.documents[index]),
              )),
              // Options()
            ],
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //   child: Icon(Icons.add_shopping_cart),
      //   elevation: 0.0,
      //   onPressed: () {
      //     StripeSource.addSource().then((String token) {
      //       //Show card added successfully...
      //       fInstance
      //           .collection('users')
      //           .document(CurrentUser.uid)
      //           .collection('tokens')
      //           .document()
      //           .setData({'tokenId': token});
      //     });
      //   },
      // ),
      floatingActionButton: FABwithOptions(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: Options(),
    );
  }

  Widget buildBody(BuildContext ctxt, DocumentSnapshot docSnapshot) {
    return Column(children: <Widget>[
      Card(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Text(docSnapshot['like'].toString()),
            title: Text(docSnapshot['name']),
            subtitle: Text(docSnapshot['date'].toString()),
            trailing: Text(docSnapshot['dislike'].toString()),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.thumb_down,
                    color: Colors.red[400],
                  ),
                  tooltip: 'Decrease vote',
                  onPressed: () {
                    fInstance.runTransaction((transaction) async {
                      DocumentSnapshot snapshot =
                          await transaction.get(docSnapshot.reference);

                      await transaction.update(snapshot.reference,
                          {'dislike': snapshot['dislike'] + 1});
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.thumb_up, color: Colors.lightBlue[400]),
                  tooltip: 'Increase vote',
                  onPressed: () {
                    fInstance.runTransaction((transaction) async {
                      DocumentSnapshot snapshot =
                          await transaction.get(docSnapshot.reference);

                      await transaction.update(
                          snapshot.reference, {'like': snapshot['like'] + 1});
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      )),
    ]);
  }
}
