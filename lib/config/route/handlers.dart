import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:bangumi_list/viewlayer/pages.dart';

var home = _bangumiList;

var _bangumiList = new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return new BangumiListPage();
});

var bangumiPage = new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return new BangumiPage(params["id"][0]);
});

var bangumiTimeline = new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return new BangumiTimelinePage();
});
