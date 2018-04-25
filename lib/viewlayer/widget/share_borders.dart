import 'package:flutter/material.dart';
import 'package:bangumi_list/config/resources/res.dart';

class AppBorders {
  static const BorderSide _side = const BorderSide(color: AppColors.divider);
  static const Border top = const Border(top: _side);
  static const Border bottom = const Border(bottom: _side);
  static const Border topAndBottom = const Border(top: _side, bottom: _side);
}
