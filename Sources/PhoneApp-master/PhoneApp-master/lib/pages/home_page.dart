import 'package:flutter/material.dart';
import 'package:phone_app/pages/contacts_page.dart';
import 'package:phone_app/pages/incoming_call_page.dart';
import 'package:phone_app/pages/recents_page.dart';
import 'package:phone_app/pages/search_contact_page.dart';
import 'package:phone_app/pages/speed_dial_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onTap: () => _openSearchContactPage(context),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).accentColor),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: IgnorePointer(
                child: TextField(
                  decoration: InputDecoration(
                    icon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: (){},),
                    hintText: 'Type a name or phone number',
                    hintStyle: TextStyle(fontSize: 12.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          actions: <Widget>[
            PopupMenuButton(itemBuilder: (BuildContext context) {}),
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 150.0,
              flexibleSpace: FlexibleSpaceBar(
                background: ListTile(
                  leading: CircleAvatar(
                    child: Text('A'),
                    backgroundColor: Theme.of(context).accentColor,
                  ),
                  title: ListTile(
                    title: Text('Last Call'),
                    subtitle: Text('38 mins ago'),
                  ),
                  trailing: Icon(Icons.phone),
                ),
              ),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.dialer_sip,
//                      color: Theme.of(context).cardColor,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.recent_actors,
//                      color: Theme.of(context).cardColor,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.contacts,
//                      color: Theme.of(context).cardColor,
                    ),
                  ),
                ],
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
            SliverFillRemaining(
              child: Stack(
                children: <Widget>[
                  TabBarView(
                    children: <Widget>[
                      SpeedDialPage(),
                      RecentsPage(),
                      ContactsPage(),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: FloatingActionButton(
                        onPressed: () => _openDialNumberPage(context),
                        tooltip: 'Dial Number',
                        child: Icon(Icons.dialpad),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _openSearchContactPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SearchContactPage()),
    );
  }

  void _openDialNumberPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => IncomingCallPage()),
    );
  }
}
