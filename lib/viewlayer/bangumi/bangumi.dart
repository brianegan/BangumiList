import 'package:flutter/material.dart';
import 'bangumi_items.dart';
import '../widget/widgets.dart';
import 'package:bangumi_list/config/resources/res.dart';

class BangumiPage extends StatelessWidget {
  final String id;

  BangumiPage(this.id);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("番剧清单"),
      ),
      body: _content(context),
    );
  }

  Widget _content(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          _bangumi(context),
          new Container(
            height: 10.0,
            decoration: new BoxDecoration(
                color: AppColors.dividerSpace, border: AppBorders.topAndBottom),
          ),
          new Expanded(child: _list(context)),
          _updateTime(context),
        ],
      ),
    );
  }

  Widget _bangumi(BuildContext context) {
    return new Container(
      height: 160.0,
      padding: new EdgeInsets.all(20.0),
      child: new BangumiItem(),
    );
  }

  Widget _list(BuildContext context) {
    return new ListView.builder(
      itemBuilder: _episode,
      itemCount: 5,
    );
  }

  Widget _episode(BuildContext context, int index) {
    return new Container(
      margin: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: new EpisodeItem(),
    );
  }

  Widget _updateTime(BuildContext context) {
    return new Container(
      height: 50.0,
      decoration: new BoxDecoration(border: AppBorders.top),
      child: new Center(
        child: new Text(
          "6天19小时30分 后更新",
          style: AppTextStyles.hint,
        ),
      ),
    );
  }
}
