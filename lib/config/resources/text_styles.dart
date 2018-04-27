import 'package:flutter/material.dart';
import 'colors.dart';
import 'dimens.dart';

class AppTextStyles {
  static const _fontMedium = FontWeight.w500;
  static const _fontBold = FontWeight.bold;

  static const normal = primary;

  static const itemUpdateTime = hint;
  static const itemUpdateEpisode = minor;
  static const itemEpisodeCount = minor;
  static const itemEpisodeTitle = hint;
  static const itemTimelineTime = hint;

  static const titleBlack = const TextStyle(
    height: 0.8,
    color: AppColors.title,
    fontSize: AppFontSize.title,
    fontWeight: _fontBold,
  );

  static const primary = const TextStyle(
    fontSize: AppFontSize.normal,
    color: AppColors.primary,
    fontWeight: _fontMedium,
  );

  static const minor = const TextStyle(
    fontSize: AppFontSize.normal,
    color: AppColors.minor,
    fontWeight: _fontMedium,
  );

  static const hint = const TextStyle(
    fontSize: AppFontSize.normal,
    color: AppColors.hint,
    fontWeight: _fontMedium,
  );

  static const smallHint = const TextStyle(
    fontSize: AppFontSize.small,
    fontWeight: _fontBold,
    color: AppColors.hint,
  );
}
