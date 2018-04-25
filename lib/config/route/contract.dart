import 'package:fluro/fluro.dart';

import 'paths.dart' as paths;
import 'handlers.dart' as handlers;

class RouteContext {
  static Router router;
}

Router getRouter() {
  if (RouteContext.router != null) {
    return RouteContext.router;
  } else {
    RouteContext.router = new Router();
    _defineRoutes(RouteContext.router);
    return RouteContext.router;
  }
}

dynamic initRouterGenerator() {
  return getRouter().generator;
}

void _defineRoutes(Router router) {
  router.define(paths.home, handler: handlers.home);
  router.define(paths.bangumi, handler: handlers.bangumiPage);
  router.define(paths.bangumiTimeline, handler: handlers.bangumiTimeline);
}
