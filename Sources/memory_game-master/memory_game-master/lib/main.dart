import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:memory_game/model/app/app_action.dart';
import 'package:memory_game/model/app/app_middleware.dart';
import 'package:memory_game/model/app/app_reducer.dart';
import 'package:memory_game/model/app/app_state.dart';
import 'package:memory_game/pages/main_page.dart';
import 'package:redux/redux.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'Animated Memory';
  final Store<AppState> store = Store<AppState>(
    appStateReducer,
    initialState: AppState.isLoading(),
    middleware: createMiddleware(),
  );

  @override
  Widget build(BuildContext context) => StoreProvider(
        store: store,
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.deepOrange,
          ),
          title: appTitle,
          routes: {
            '/': (context) => MainPage(
                  appTitle: appTitle,
                  onInit: () {
                    StoreProvider.of<AppState>(context)
                        .dispatch(AppActionLoadMemoryBlocks());
                  },
                )
          },
        ),
      );
}
