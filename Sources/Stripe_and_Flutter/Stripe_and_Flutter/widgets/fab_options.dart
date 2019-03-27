import 'package:flutter/material.dart';
import 'package:stripe_payment/stripe_payment.dart';
import 'package:samples/utilities/CommonFunctions.dart';
import 'package:samples/utilities/CurrentUser.dart';
import 'package:http/http.dart' as http;
import 'package:samples/responses/charges_resp.dart';
import 'dart:convert';
import 'package:samples/widgets/payment_list.dart';
import 'package:samples/classes/PaymentItem.dart';

class FABwithOptions extends StatefulWidget {
  @override
  _FABOptionsState createState() => _FABOptionsState();
}

final ThemeData _kTheme = ThemeData(
  fontFamily: 'OpenSans',
);

class _FABOptionsState extends State<FABwithOptions>
    with SingleTickerProviderStateMixin {
  //For animation controller
  AnimationController _animationController;

  //For icon changing as per Tween....
  Animation<double> _animationIcon;

  //Animate the color...
  Animation<Color> _animateColor;

  bool isFABOpened = false;
  double _fabHeight = 56.0;

  //Animate the FAB button....
  Animation<double> _animateFABButton;

  @override
  void initState() {
    //setting the animation Controller....
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });

    //Tweening the beginning and end values...
    _animationIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    //Tweening the color.....
    _animateColor = ColorTween(begin: Colors.green, end: Colors.blue).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeIn,
            reverseCurve: Curves.easeOut));

    _animateFABButton =
        Tween<double>(begin: _fabHeight, end: -14.0).animate(CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              0.0,
              0.75,
              curve: Curves.easeOut,
            ),
            reverseCurve: Curves.easeOut));

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  //Animated Icon --> icons animation.....
  @override
  Widget build(BuildContext context) {
    //Single floating button.....
    // return FloatingActionButton(
    //   child: AnimatedIcon(
    //     icon: AnimatedIcons.menu_close,
    //     progress: _animationIcon,
    //   ),
    //   onPressed: animation,
    //   backgroundColor: _animateColor.value,
    // );

    //Column for all the buttons....To hide the buttons, use Transform Widget....
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform(
          transform: Matrix4.translationValues(
              0.0, _animateFABButton.value * 2.0, 0.0),
          child: addCard(),
        ),
        Transform(
          transform:
              Matrix4.translationValues(0.0, _animateFABButton.value, 0.0),
          child: payments(),
        ),
        fab()
      ],
    );
  }

  animation() {
    isFABOpened = !isFABOpened;
    isFABOpened == true
        ? _animationController.forward()
        : _animationController.reverse();
  }

  Widget payments() {
    return Material(
      child: FloatingActionButton(
        heroTag: 'listCharges',
        onPressed: () {
          _getPayments().then((value) {
            final result = _getSelectedPayment(value);

            result.then((val) {
              refundID = val;
            });
          });
        },
        tooltip: 'All payments',
        child: Icon(Icons.attach_money),
      ),
    );
  }

  Widget addCard() {
    return Material(
      child: FloatingActionButton(
        heroTag: 'addCard',
        tooltip: 'Add card',
        // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Icon(Icons.credit_card),
        elevation: 0.0,
        onPressed: () {
          StripeSource.addSource().then((String token) {
            //Show card added successfully...
            fInstance
                .collection('users')
                .document(CurrentUser.uid)
                .collection('tokens')
                .document()
                .setData({'tokenId': token});
          });
        },
      ),
    );
  }

  Widget fab() {
    return FloatingActionButton(
      heroTag: 'animatedFAB',
      child: AnimatedIcon(
        icon: AnimatedIcons.menu_close,
        progress: _animationIcon,
      ),
      onPressed: animation,
      backgroundColor: _animateColor.value,
    );
  }

  Future<ChargesJSON> _getPayments() async {
    final uri = Uri.https('us-central1-fblogin-4b993.cloudfunctions.net',
        'listCharges', {"email": "user e-mail"});

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return ChargesJSON.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<String> _getSelectedPayment(ChargesJSON data) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) => Theme(
            data: _kTheme.copyWith(platform: Theme.of(context).platform),
            child: PaymentsList(convertListToWidget(data))),
      ),
    );
  }
}
