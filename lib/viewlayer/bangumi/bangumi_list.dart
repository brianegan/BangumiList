import 'package:bangumi_list/ui_framework.dart';
import 'package:bangumi_list/viewlayer/bangumi/bangumi_items.dart';

class BangumiListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("番剧清单"),
      ),
      body: new Column(
        children: <Widget>[
          new Expanded(
            child: new Container(
              child: _list(context),
            ),
          ),
          _addBangumi(context),
        ],
      ),
    );
  }

  Widget _addBangumi(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        RouterUtils.gotoTimeline(context);
      },
      child: new Container(
        height: 50.0,
        padding: new EdgeInsets.only(left: 8.0),
        decoration: new BoxDecoration(
          border: new Border(top: new BorderSide(color: AppColors.divider)),
        ),
        child: new GestureDetector(
          child: new Row(
            children: <Widget>[
              new Container(
                child: new Icon(Icons.add, color: Colors.blue),
                margin: new EdgeInsets.all(8.0),
              ),
              new Text(
                "添加追番计划",
                style: new TextStyle(
                  fontSize: 15.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _list(BuildContext context) {
    return new StoreConnector<AppState, BangumiListState>(
      converter: (store) => store.state.bangumiListState,
      builder: (ctx, state) => new Container(
            child: new ListView.builder(
              itemBuilder: (ctx, index) => _buildItem(ctx, state.list[index]),
              itemCount: state.list.length,
            ),
          ),
    );
  }

  Widget _buildItem(BuildContext context, BangumiVO vo) {
    return new GestureDetector(
      onTap: () {
        RouterUtils.gotoBangumi(context, "0");
      },
      child: new Container(
        height: 124.0,
        padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: new BoxDecoration(
          border: new Border(
            bottom: new BorderSide(color: AppColors.divider),
          ),
        ),
        child: new Center(
          child: new BangumiItem(vo),
        ),
      ),
    );
  }
}
