import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './AppString.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import './AppColors.dart';
import './AppPadding.dart';
import './AppStyle.dart';
import './Widget/Dots.dart';

enum VisibilityFlag {
  visible,
  invisible,
  offscreen,
  gone,
}

class AppWidget extends StatelessWidget {
  static get Divider16 => new Divider(
        height: 8.0,
        color: Colors.blue,
      );

  static get Divider8 => new Divider(
        height: 8.0,
      );

  static Widget get Loading =>
      Expanded(child: Center(child: CircularProgressIndicator()));

  //Note:A Custom Scroll View allows you to use Slivers which essentially is a section of a viewport,
  // meaning you can have a scrollable page consisting of different widgets.
  //Tip :- To use a Normal Widget in slivers just use a SliverToBoxAdapter().

  static MessageWiget(
          {message,
          style: const TextStyle(color: Colors.black, fontSize: 28.0)}) =>
      Expanded(
        child: Center(
          child: Text(
            message,
            style: style,
            textAlign: TextAlign.center,
          ),
        ),
      );

  static get SpacerWidget => Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Boring Show",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              ),
              Spacer(),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Boring Show",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              ),
            ],
          ),
        ),
      );

  static get WrapWidget => Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Boring Show",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              ),
              SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Boring Show",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              ),
              SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Boring Show",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              ),
              SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Boring Show",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              ),
              SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Boring Show",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              )
            ],
          ),
        ),
      );

  static get PaddingWidgeAll15 => Padding(
        padding: AppPadding.All15,
      );

  static showOverlay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
            top: 200.0,
            height: 40.0,
            left: 30.0,
            right: 30.0,
            child: Material(
              color: Colors.red,
              shape: StadiumBorder(),
              child: Padding(
                padding: AppPadding.All8,
                child: Text(
                  "Boring Show",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
    );

// OverlayEntry overlayEntry = OverlayEntry(
//         builder: (context) => Positioned(
//               top: MediaQuery.of(context).size.height / 2.0,
//               width: MediaQuery.of(context).size.width / 2.0,
//               child: CircleAvatar(
//                 radius: 50.0,
//                 backgroundColor: Colors.red,
//                 child: Text("1"),
//               ),
//             ));
    overlayState.insert(overlayEntry);

    await Future.delayed(Duration(seconds: 2));

    overlayEntry.remove();
  }

  static get pageScaffoldWidget => CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text("Chats"),
            ),
            SliverFillRemaining(
              child: Center(
                child: Text("WhatsApp"),
              ),
            )
          ],
        ),
      );

  static get cupertinoTabScaffoldWidget => CupertinoTabScaffold(
        tabBuilder: (context, i) => CupertinoPageScaffold(
              child: Center(
                child: i == 0 ? Text("Phone") : Text("Chat"),
              ),
            ),
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone), title: Text("Phone")),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.conversation_bubble),
                title: Text("Chat"))
          ],
        ),
      );

  static get cupertinoPageScaffoldWiget => CupertinoPageScaffold(
        child: Center(
          child: Text("Hello Cupertino iOS"),
        ),
        navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.back),
          middle: Text("Cupertino"),
          trailing: Icon(CupertinoIcons.search),
        ),
      );

  static get BannerWiget => Center(
        child: Banner(
          child: Container(
            color: Colors.green,
            child: Image.asset("graphics/boringshow.jpg"),
            height: 200.0,
          ),
          location: BannerLocation.bottomEnd,
          message: "Boring Show",
          color: Colors.pink,
        ),
      );

  static SizedBoxFromSizeWidget(context) => Container(
        //Sized Box with fromSize constructor to give directly the size
        child: SizedBox.fromSize(
          size: MediaQuery.of(context).size / 10.0,
        ),
      );

  static get SizedBoxExpandWidget => //SizedBox with Expand constructor so that
      // it can expand to its parent width & height
      Container(
        height: 200.0,
        width: 200.0,
        child: SizedBox.expand(
          child: FlutterLogo(),
        ),
      );

  static get SizedOverflowBoxWidget =>
      //SizedOverflowbox to allow its child
      // to overflow or expand more than its parent size.
      Container(
        child: SizedOverflowBox(
            size: Size(50.0, 50.0),
            child: Text("Three", style: TextStyle(fontSize: 25.0))),
      );

  static get FractionallySizeBoxWidget =>
      //Fractional Sized box to give ration for the child
      // to adjust depending on its parent size
      new Container(
        height: 100.0,
        width: 100.0,
        child: FractionallySizedBox(
          heightFactor: 0.5,
          widthFactor: 0.5,
          child: FlutterLogo(),
        ),
      );

  static get DrawerWiget => new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Victor Tong",
              ),
              accountEmail: Text(
                "victor.tong@blockmanic.com",
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage(AppString.pkImage),
              ),
            ),
            new ListTile(
              title: Text(
                "Profile",
                style: AppStyle.F18Bold,
              ),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
            new ListTile(
              title: Text(
                "Shopping",
                style: AppStyle.F18Bold,
              ),
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
            ),
            new ListTile(
              title: Text(
                "Dashboard",
                style: AppStyle.F18Bold,
              ),
              leading: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
            ),
            new ListTile(
              title: Text(
                "Timeline",
                style: AppStyle.F18Bold,
              ),
              leading: Icon(
                Icons.timeline,
                color: Colors.cyan,
              ),
            ),
            Divider(),
            new ListTile(
              title: Text(
                "Settings",
                style: AppStyle.F18Bold,
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.brown,
              ),
            ),
            Divider(),
            AppWidget.AboutScreen
          ],
        ),
      );

  static get ImageBlurBackDropFilterPostion => Positioned(
      top: 100,
      bottom: 150,
      left: 150,
      right: 100,
      child: new BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: new Container(
          color: Colors.black.withOpacity(0),
        ),
      ));

  static get ImageBlurBackDropFilterPostionFill => Positioned.fill(
          //InSide of the stack
          child: new BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: new Container(
          color: Colors.black.withOpacity(0),
        ),
      ));

  static get CardShadow => new Material(
      borderRadius: BorderRadius.circular(10.0),
      elevation: 0.0,
      child: new Container(
        height: 500.0,
        width: 350.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          // the box shawdow property allows for fine tuning as aposed to shadowColor
          boxShadow: [
            new BoxShadow(
                color: Color(0xFFFFAFBD),
                // offset, the X,Y coordinates to offset the shadow
                offset: new Offset(0.0, 10.0),
                // blurRadius, the higher the number the more smeared look
                //spreadRadius broadened up the shadow and the blurRadius increase made for a more fuzzy cotton candy look.
                blurRadius: 30.0,
                spreadRadius: 4.0)
          ],
        ),
        // child: Text("This is where your content goes")
      ));

  static get InstagramPost => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    "https://pbs.twimg.com/profile_images/877903823133704194/Mqp1PXU8_400x400.jpg"))),
                      ),
                      AppWidget.SizeBoxW10,
                      Text(
                        "The Verge",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  )
                ]),
          ),
          Container(
            child: Image.network(
              "https://scontent-bom1-1.cdninstagram.com/vp/bbe7af06973ff08e40c46e78b6dbae1b/5CD2BC37/t51.2885-15/e35/49480120_356125811610205_2312703144893486280_n.jpg?_nc_ht=scontent-bom1-1.cdninstagram.com",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                    ),
                    SizedBox(width: 16.0),
                    Icon(FontAwesomeIcons.comment),
                    SizedBox(width: 16.0),
                    Icon(FontAwesomeIcons.paperPlane)
                  ],
                ),
                Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
        ],
      );

  static get BottomAppBar4Tabs => BottomAppBar(
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box),
              onPressed: () {},
            )
          ],
        ),
      );

  //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  static get FabLocation => FloatingActionButton(
        backgroundColor: Colors.black,
        child: new Icon(Icons.add),
        onPressed: () {},
        shape: new BeveledRectangleBorder(
            borderRadius: new BorderRadius.circular(50.0)),
      );

  //The App bar is set as pinned, so that it remains static even while scrolling up/down, but this can be changed for some interesting UI/UX.
  static get SilverAppbar2 => SliverAppBar(
        pinned: true,
        backgroundColor: new Color(0xfff8faf8),
        elevation: 0.0,
        centerTitle: true,
        title: SizedBox(
          height: 35.0,
          child: Image.asset("assets/images/insta_logo.png"),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
        ),
      );

  static get SizeBoxH5 => SizedBox(width: 5.0);

  //Sized Box with fromSize constructor to give directly the size
  static RandomBoxContext(context) => Container(
        child: SizedBox.fromSize(
          size: MediaQuery.of(context).size / 10.0,
        ),
      );

  static get RadomContainer => Container(
        height: 200.0,
        width: 200.0,
        child: SizedBox.expand(
          child: FlutterLogo(),
        ),
      );

  //normal Sized box with height and width
  static get SizeBoxNoraml => SizedBox(
        width: 100.0,
        height: 100.0,
        child: Container(),
      );

  static PlayButton(video) => new Material(
        color: Colors.black87,
        type: MaterialType.circle,
        child: new InkWell(
          onTap: () async {
            if (await canLaunch(video.url)) {
              await launch(video.url);
            }
          },
          child: new Padding(
            padding: AppPadding.All8,
            child: new Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ),
      );

  static CardIconText(BuildContext context) {
    return new Card(
        color: Colors.transparent,
        child: new Center(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.warning, size: 128.0),
              new Text("Here is the new Card",
                  style: AppStyle.ThemeDisplay1(context)),
            ],
          ),
        ));
  }

  static get CustomeRedDot => Container(
          child: new Directionality(
        textDirection: TextDirection.ltr,
        child: Dots(
          child: Center(
            child: Text('Touch me!'),
          ),
        ),
      ));

  static get AboutScreen => new AboutListTile(
        applicationIcon: FlutterLogo(
          colors: Colors.yellow,
        ),
        icon: FlutterLogo(
          colors: Colors.yellow,
        ),
        aboutBoxChildren: <Widget>[
          AppWidget.SizeBoxH10,
          Text(
            "Developed By Victor Tong",
          ),
          Text(
            "MTechViral",
          ),
        ],
        applicationName: "AppName",
        applicationVersion: "1.0.1",
        applicationLegalese: "Apache License 2.0",
      );

  static get CallMe => new Center(
        child: new FlatButton(
            onPressed: () => launch("tel://21213123123"),
            child: new Text("Call me", style: AppStyle.MainTextStyle)),
      );

  static get ButtonFollowIcon => new Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text('FOLLOW', style: AppStyle.Montserrat10White),
            new Icon(
              Icons.people,
              size: 10.0,
              color: Colors.white,
            )
          ],
        ),
      );

  static get ButtonFollowingIcon => new Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text('FOLLOWING', style: AppStyle.Montserrat10White),
            new Icon(
              Icons.check,
              size: 10.0,
              color: Colors.white,
            )
          ],
        ),
      );

  static get VerticalDividerLineDark => new Container(
        width: 1.0,
        height: 66.0,
        color: AppColors.LineDark,
      );

  static get VerticalDividerWhite => new Container(
        height: 30.0,
        width: 1.0,
        color: Colors.white30,
        margin: AppPadding.SymmetricH20V10,
      );

  static get VerticalDividerShadow => new Container(
        width: 2.0,
        height: 70.0,
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
          colors: [
            Colors.white,
            Colors.white,
            Colors.black12,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
      );

  static get SizeBoxW10 => SizedBox(
        width: 10.0,
      );

  static get SizeBoxW5 => SizedBox(width: 5.0);

  static get SizeBoxW7 => SizedBox(width: 7.0);

  static get SizeBoxW15 => SizedBox(width: 15.0);
  static get SizeBoxW25 => SizedBox(width: 25.0);

  static get SizeBoxW50 => SizedBox(width: 50.0);
  static get SizeBoxW60 => SizedBox(width: 60.0);

  static get SizedBoxH2 => SizedBox(height: 2.0);

  static get SizeBoxH10 => SizedBox(height: 10.0);

  static get SizeBoxH12 => SizedBox(height: 12.0);

  static get SizeBoxH16 => SizedBox(height: 16.0);
  static get SizeBoxH25 => SizedBox(height: 25.0);
  static get SizeBoxH15 => SizedBox(height: 15.0);

  static get SizeBoxH33 => SizedBox(height: 33.0);
  static get SizeBoxH32 => SizedBox(height: 32.0);

  static get SizeBoxH20 => SizedBox(height: 20.0);

  static get SizeBoxH30 => SizedBox(height: 30.0);

  static get SizeBoxH40 => SizedBox(height: 40.0);

  static get SizeBoxH50 => SizedBox(height: 50.0);

  static get SizedBoxBarheight => SizedBox(height: kTextTabBarHeight);

  static get FontAwesomeIcon => new Icon(FontAwesomeIcons.globe);

  static BuildRatedStar(int rating, int index) {
    if (index <= rating) {
      return Icon(Icons.star, size: 9.0, color: Colors.yellow[600]);
    } else {
      return Icon(Icons.star, size: 9.0, color: Colors.grey);
    }
  }

  static get PostCard => new Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    "https://pbs.twimg.com/profile_images/877903823133704194/Mqp1PXU8_400x400.jpg"))),
                      ),
                      AppWidget.SizeBoxW10,
                      Text(
                        "The Verge",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  )
                ]),
          ),
          Container(
            child: Image.network(
              "https://scontent-bom1-1.cdninstagram.com/vp/bbe7af06973ff08e40c46e78b6dbae1b/5CD2BC37/t51.2885-15/e35/49480120_356125811610205_2312703144893486280_n.jpg?_nc_ht=scontent-bom1-1.cdninstagram.com",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                    ),
                    SizedBox(width: 16.0),
                    Icon(FontAwesomeIcons.comment),
                    SizedBox(width: 16.0),
                    Icon(FontAwesomeIcons.paperPlane)
                  ],
                ),
                Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
