import 'routes.dart';
import 'package:flutter/material.dart';
import 'paths.dart' as RouterPaths;

class RouterUtils {
  static void gotoBangumi(BuildContext context, String id) {
    var path = RouterPaths.bangumi.replaceAll(":id", id);
    getRouter().navigateTo(context, path);
  }

  static void gotoTimeline(BuildContext context) {
    getRouter().navigateTo(context, RouterPaths.bangumiTimeline);
  }
}
