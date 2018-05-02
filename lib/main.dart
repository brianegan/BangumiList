import 'ui_framework.dart';
import 'viewlayer/pages.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final Store<AppState> _store = new Store<AppState>(
    appReducer,
    initialState: new AppState(),
  );

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: _store,
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
