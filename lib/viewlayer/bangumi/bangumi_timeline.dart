import 'package:flutter/material.dart';
import 'package:bangumi_list/config/resources/res.dart';
import 'bangumi_timeline_list.dart';

class BangumiTimelinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BangumiTimelineState();
  }
}

class BangumiTimelineState extends State<BangumiTimelinePage>
    with SingleTickerProviderStateMixin {
  List<TimeTab> _allPages = [
    new TimeTab(),
    new TimeTab(),
    new TimeTab(),
    new TimeTab(),
    new TimeTab(),
    new TimeTab(),
    new TimeTab(),
    new TimeTab(),
    new TimeTab(),
    new TimeTab(),
    new TimeTab(),
  ];

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: _allPages.length, vsync: this);
    _controller.addListener(_onTabChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onTabChanged);
    _controller.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    if (!_controller.indexIsChanging) {
      _allPages.asMap().forEach((i, tab) {
        tab._state.changeFocus(i == _controller.index);
      });
    }
  }

  Decoration getIndicator() {
    return new BoxDecoration();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text("时间表页面"),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            height: 66.0,
            child: new TabBar(
              isScrollable: true,
              indicator: getIndicator(),
              controller: _controller,
              tabs: _allPages,
            ),
          ),
          new Expanded(
            child: new TabBarView(
              controller: _controller,
              children: _allPages.map((TimeTab page) {
                return new BangumiTimelineListPage();
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class TimeTab extends StatefulWidget {
  _TimeTabState _state;

  TimeTab() {
    _state = new _TimeTabState();
  }

  @override
  State<StatefulWidget> createState() {
    return _state;
  }
}

class _TimeTabState extends State<TimeTab> {
  bool _focus = false;
  bool _cur = false;

  void changeFocus(bool focus) {
    if (_focus != focus) {
      _focus = focus;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: new Center(
              child: new Container(
                decoration: new BoxDecoration(
                  color: _cur ? Colors.blue : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                height: 4.0,
                width: 4.0,
              ),
            ),
          ),
          new Text(
            "7-20",
            style: AppTextStyles.smallHint.copyWith(
              fontSize: 11.0,
              color: _focus ? Colors.blue : null,
            ),
          ),
          new Container(
            height: 28.0,
            width: 28.0,
            margin: const EdgeInsets.only(top: 2.0),
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              color: _focus ? Colors.blue : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: new Text(
              "四",
              style: AppTextStyles.hint.copyWith(
                color: _focus ? Colors.white : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
