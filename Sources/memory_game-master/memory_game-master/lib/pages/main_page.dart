import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:memory_game/pages/memory_page.dart';

class MainPage extends StatefulWidget {
  final String appTitle;
  final VoidCallback onInit;

  const MainPage({this.appTitle, this.onInit});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    widget.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => MemoryPage(
        appStore: StoreProvider.of(context),
        appTitle: widget.appTitle,
      );
}
