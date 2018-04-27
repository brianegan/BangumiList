import 'package:flutter/material.dart';
import 'package:bangumi_list/ui_framework.dart';

/// 番剧条目 只展示信息
class BangumiItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        children: <Widget>[
          _image(context),
          _content(context),
        ],
      ),
    );
  }

  Widget _image(BuildContext context) {
    return new AspectRatio(
      aspectRatio: 70.0 / 100.0,
      child: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.cover,
            image: new NetworkImage(
                "https://pic2.zhimg.com/ae1f3d38dee8c352823bfae4b5afa884_1200x500.jpg"),
          ),
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    return new Expanded(
      child: new Container(
        margin: new EdgeInsets.only(left: 8.0),
        padding: new EdgeInsets.only(top: 4.0, bottom: 4.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              "末日时在做什么? 有没有空? 可以来拯救吗?",
              style: AppTextStyles.titleBlack,
              maxLines: 2,
            ),
            new Container(height: 4.0),
            new Expanded(
              child: new Text(
                "每周日 00:30更新",
                style: AppTextStyles.itemUpdateTime,
              ),
            ),
            new Text(
              "更新至15话",
              style: AppTextStyles.itemUpdateEpisode,
            ),
          ],
        ),
      ),
    );
  }
}

/// 番剧分集条目
class EpisodeItem extends StatelessWidget {
  var _textPadding =
      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 62.0,
      padding: _textPadding,
      color: AppColors.bgStress,
      alignment: Alignment.centerLeft,
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: new Container(
              alignment: Alignment.centerLeft,
              child: new Text(
                "第15话",
                maxLines: 1,
                style: AppTextStyles.itemEpisodeCount,
              ),
            ),
          ),
          new Expanded(
            child: new Container(
              alignment: Alignment.centerLeft,
              child: new Text(
                "比翼鸟",
                maxLines: 1,
                style: AppTextStyles.itemEpisodeTitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 选择追番的条目 有追番按钮
class FollowBangumiItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        children: <Widget>[
          _image(context),
          _content(context),
        ],
      ),
    );
  }

  Widget _image(BuildContext context) {
    return new AspectRatio(
      aspectRatio: 70.0 / 100.0,
      child: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.cover,
            image: new NetworkImage(
                "https://pic2.zhimg.com/ae1f3d38dee8c352823bfae4b5afa884_1200x500.jpg"),
          ),
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    return new Expanded(
      child: new Container(
        margin: new EdgeInsets.only(left: 8.0),
        padding: new EdgeInsets.only(top: 4.0, bottom: 4.0),
        child: new Stack(
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "末日时在做什么? 有没有空? 可以来拯救吗?",
                  style: AppTextStyles.titleBlack
                      .copyWith(fontSize: AppFontSize.large),
                  maxLines: 2,
                ),
                new Container(height: 8.0),
                new Text(
                  "更新至15话",
                  style: AppTextStyles.itemUpdateEpisode,
                ),
              ],
            ),
            new Container(
              alignment: Alignment.centerRight,
              child: new FollowButton(
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
