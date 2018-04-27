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
        height: 30.0,
        width: 60.0,
        decoration: _bgDecoration(),
        child: new Text(
          following ? "弃坑" : "追番",
          style: AppTextStyles.normal.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  Decoration _bgDecoration() {
    return new BoxDecoration(
      borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
      gradient:
          following ? AppGradientColors.appRed : AppGradientColors.appBlue,
    );
  }
}
