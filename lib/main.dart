import 'package:bangumi_list/magiclayer/app/reducers.dart';
import 'package:bangumi_list/magiclayer/app/states.dart';
import 'package:bangumi_list/viewlayer/bangumi/bangumi_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: new Store<AppState>(
        appReducer,
        initialState: new AppState(),
      ),
      child: new MaterialApp(
        title: '番剧清单',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: new BangumiListPage(),
//        onGenerateRoute: initRouterGenerator(),
      ),
    );
  }
}
