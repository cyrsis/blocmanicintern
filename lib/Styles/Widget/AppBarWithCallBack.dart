import 'package:flutter/material.dart';

class AppBarWithCallBack extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback onTap;
  final AppBar appBar;

  const AppBarWithCallBack({Key key, this.onTap, this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: appBar);
  }

  // TODO: implement preferredSize
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}


//return Scaffold(
//appBar: CustomAppBar(
//appBar: AppBar(title: Text("hello"),),
//onTap: () {
//print("test");
//},
//),
//body: Container(),
//);
