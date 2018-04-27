import 'ui_framework.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final _store = new Store<AppState>(appReducer);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: _store,
      child: new MaterialApp(
        title: '番剧清单',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: initRouterGenerator(),
      ),
    );
  }
}
