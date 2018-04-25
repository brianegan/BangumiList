import 'package:flutter/material.dart';

class BangumiPage extends StatelessWidget {
  final String id;

  BangumiPage(this.id);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("番剧清单 番剧id=$id"),
      ),
    );
  }
}
