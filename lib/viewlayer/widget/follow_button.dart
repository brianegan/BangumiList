import 'package:flutter/material.dart';
import 'package:bangumi_list/ui_framework.dart';

class FollowButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool following;

  const FollowButton({
    this.following: false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onPressed,
      child: new Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 30.0,
        width: 60.0,
        decoration: _bgDecoration(),
        child: new Row(
          children: <Widget>[
            new Icon(
              following ? Icons.check_box : Icons.check_box_outline_blank,
              color: Colors.white,
              size: 12.0,
            ),
            new Expanded(child: new Container()),
            new Text(
              following ? "弃坑" : "追番",
              style: AppTextStyles.normal.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Decoration _bgDecoration() {
    return new BoxDecoration(
      borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
      gradient: AppGradientColors.selectButton(following),
    );
  }
}
