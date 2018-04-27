import 'dart:ui';
import 'package:flutter/material.dart';

final dividerColor = const Color(0xFFE5E5E5);

class AppColors {
  static const Color black = const Color(0xFF000000);
  static const Color grey = const Color(0xFF999999);

  static const Color divider = const Color(0xFFE5E5E5);
  static const Color dividerSpace = const Color(0xFFFAFAFA);
  static const Color title = const Color(0xFF333333);

  static const Color bgStress = const Color(0xFFF6F6F6);

  static const Color appBlue = const Color(0xFF167EF2);
  static const Color appBlueLight = const Color(0xFF06AAE8);
  static const Color appRed = const Color(0xFFDD4D41);
  static const Color appRedLight = const Color(0xFFFF6255);

  static const Color primary = const Color(0xFF333333);
  static const Color minor = const Color(0xFF666666);
  static const Color hint = grey;

  static selectUpdateEpisode(select) => select ? appRed : minor;
}

class AppGradientColors {

  static selectButton(select) => select ? appRed : appBlue;

  static const LinearGradient appBlue = const LinearGradient(
    colors: [
      AppColors.appBlue,
      AppColors.appBlueLight,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient appRed = const LinearGradient(
    colors: [
      AppColors.appRed,
      AppColors.appRedLight,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
