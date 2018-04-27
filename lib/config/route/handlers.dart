import 'package:bangumi_list/ui_framework.dart';
import 'package:bangumi_list/viewlayer/pages.dart';

import 'package:bangumi_list/test_data.dart' as TEST;

var home = _bangumiList;

var _bangumiList = new Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return tmpTestData();
//    return new BangumiListPage();
  },
);

StoreProvider<AppState> tmpTestData() {
  return new StoreProvider(
    store: new Store(
      null,
      initialState: new AppState(
        bangumiListState: new BangumiListState(list: [
          TEST.testBangumiVO,
          TEST.testBangumiVO,
          TEST.testBangumiVO,
        ]),
      ),
    ),
    child: new BangumiListPage(),
  );
}

var bangumiPage = new Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new BangumiPage(params["id"][0]);
  },
);

var bangumiTimeline = new Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new BangumiTimelinePage();
  },
);
