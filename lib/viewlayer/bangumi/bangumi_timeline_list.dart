import 'package:flutter/material.dart';
import 'package:bangumi_list/config/resources/res.dart';

import 'bangumi_items.dart';

class BangumiTimelineListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: _buildItem,
      itemCount: 4,
    );
  }

  Widget _buildItem(BuildContext content, int index) {
    return new _TimelineItem();
  }
}

class _TimelineItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100.0,
      padding: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: new Row(
        children: <Widget>[
          new Container(
            child: new Text(
              "10:30",
              style: AppTextStyles.itemTimelineTime,
            ),
            alignment: Alignment.topLeft,
            margin: new EdgeInsets.only(right: 10.0),
          ),
          new Expanded(
            child: new FollowBangumiItem(),
          ),
        ],
      ),
    );
  }
}
