import 'package:flutter/material.dart';
import 'package:bangumi_list/ui_framework.dart';

/// 番剧条目 只展示信息
class BangumiItem extends StatelessWidget {
  final BangumiVO _vo;

  BangumiItem(this._vo);

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
            image: new NetworkImage(_vo.coverUrl),
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
            /// 番剧标题
            new Text(
              _vo.title,
              style: AppTextStyles.titleBlack,
              maxLines: 2,
            ),
            new Container(height: 4.0),

            /// 更新时间
            new Expanded(
              child: new Text(
                _vo.updateTime,
                style: AppTextStyles.itemUpdateTime,
              ),
            ),

            /// 更新到第几集
            new Text(
              _vo.updateEpisode,
              style: AppTextStyles.itemUpdateEpisode.copyWith(
                color: AppColors.selectUpdateEpisode(_vo.following),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 番剧分集条目
class EpisodeItem extends StatelessWidget {
  static const _textPadding =
      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0);

  final EpisodeVO _vo;

  EpisodeItem(this._vo);

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
                _vo.index,
                maxLines: 1,
                style: AppTextStyles.itemEpisodeCount,
              ),
            ),
          ),
          new Expanded(
            child: new Container(
              alignment: Alignment.centerLeft,
              child: new Text(
                _vo.title,
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
  final BangumiVO _vo;

  FollowBangumiItem(this._vo);

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
            image: new NetworkImage(_vo.coverUrl),
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
                  _vo.title,
                  style: AppTextStyles.titleBlack
                      .copyWith(fontSize: AppFontSize.large),
                  maxLines: 2,
                ),
                new Container(height: 8.0),
                new Text(
                  _vo.updateEpisode,
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
