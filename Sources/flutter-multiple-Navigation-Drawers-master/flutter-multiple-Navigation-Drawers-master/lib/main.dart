import 'package:flutter/material.dart';
 void main()=>runApp(
   new MaterialApp(
 home: new home(),
 debugShowCheckedModeBanner: false,
   )
 );

 class home extends StatefulWidget {
   @override
   _homeState createState() => new _homeState();
 }
 
 class _homeState extends State<home> {
   @override
   Widget build(BuildContext context) {
     return new Scaffold(
    appBar: new AppBar(
      title: new Center(
        child: new Text("Navigation Drawer"),
      ),
    ),
    drawer: new Drawer(
      child:new my_drawer(
        email: "Devefy@gmail.com",
        name: "Abdi hamid",
        profileimg: "assets/profile.png",
        background: "assets/bg.jpg",
      )
    ),
    endDrawer: new Drawer(
       child: new my_drawer(
      email: "Johndoe@gmail.com",
      name: "John doe",
      profileimg: "assets/profile_2.jpg",
      background: "assets/bg_2.jpg",
    ),
    ),
    body: new Center(
      child: new Text("Drawer"),
    ),
     );
   }
 }

 class my_drawer extends StatelessWidget {
   String email,name,profileimg,background;

my_drawer({this.background,this.profileimg,this.name,this.email});

   @override
   Widget build(BuildContext context) {
     return new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountEmail: new Text(email),
            accountName: new Text(name),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new AssetImage(profileimg),
            ),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage(background),
                fit: BoxFit.cover
              )
            ),
          ),
          new ListTile(
            title: new Text("Home"),
            trailing: new Icon(Icons.home),
            onTap: (){print("Home");},
          ),
           new ListTile(
            title: new Text("Notification"),
            trailing: new Icon(Icons.notifications),
            onTap: (){print("Notification");},
          ),
           new ListTile(
            title: new Text("Exit"),
            trailing: new Icon(Icons.exit_to_app),
            onTap: (){print("Exit");},
          )
        ],
      );
   }
 }