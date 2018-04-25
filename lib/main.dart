import 'package:flutter/material.dart';

import 'config/route/routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '番剧清单',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      onGenerateRoute: initRouterGenerator(),
    );
  }
}
