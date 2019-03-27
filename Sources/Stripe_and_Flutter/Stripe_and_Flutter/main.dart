import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'DetailScreen.dart';
import 'package:samples/utilities/CommonFunctions.dart';

void main() {
  fInstance.settings(timestampsInSnapshotsEnabled: true);
  runApp(new MyApp());
}

final ThemeData _kTheme = ThemeData(
  fontFamily: 'OpenSans',
);

const TextStyle textStyle = TextStyle(
  fontFamily: 'OpenSans',
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaunchScreen(),
    );
  }
}

class LaunchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoggingOptions();
  }
}

final FirebaseAuth _fAuth = FirebaseAuth.instance;

final GoogleSignIn _googleSignIn =
    GoogleSignIn(scopes: ['email'], signInOption: SignInOption.standard);

FirebaseUser user;
GoogleSignInAccount _currentUser;

class LoggingOptions extends State<LaunchScreen> {
  Future<FirebaseUser> _handleSignIn() async {
    try {
      GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
      _currentUser = googleSignInAccount;

      GoogleSignInAuthentication authentication =
          await googleSignInAccount.authentication;

      user = await _fAuth.signInWithGoogle(
          idToken: authentication.idToken,
          accessToken: authentication.accessToken);

      return user;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<void> _handleSignOut() async {
    _googleSignIn.signOut();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            child: CupertinoButton(
              color: CupertinoColors.activeBlue,
              child: const Text(
                'Sign in with Google',
                style: textStyle,
              ),
              onPressed: () {
                _handleSignIn().then((user) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Theme(
                            data: _kTheme.copyWith(
                                platform: Theme.of(context).platform),
                            child: DetailScreen(
                              loggedInUser: user,
                              user: _currentUser,
                            ),
                          ),
                      // DetailScreen(
                      //       loggedInUser: user,
                      //       user: _currentUser,
                      //     )
                    ),
                  );
                });
              },
            ),
          ),
          SizedBox(
            child: CupertinoButton(
              color: CupertinoColors.activeBlue,
              child: const Text(
                'Sign out with Google',
                style: textStyle,
              ),
              onPressed: () {
                _handleSignOut();
              },
            ),
          ),
        ],
      ),
    ));
  }
}
