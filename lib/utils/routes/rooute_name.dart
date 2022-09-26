import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handler.dart';

class CoffeeRoute {
  static String root = "/";
  static String coffeeDetail = '/coffeeDetail';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler =
        Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return;
    });

    router.define(root, handler: rootHandler);
    router.define(
      coffeeDetail,
      handler: coffeeDetailHandler,
      transitionType: TransitionType.fadeIn,
    );
  }
}
