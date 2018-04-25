import 'package:flutter/material.dart';
import 'package:bangumi_list/config/route/routes.dart';

class BangumiListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("番剧清单"),
      ),
      body: new Container(
        child: new Center(
          child: new RaisedButton(
            child: new Text("添加追番计划"),
            onPressed: () {
              RouterUtils.gotoTimeline(context);
            },
          ),
        ),
      ),
    );
  }
}
