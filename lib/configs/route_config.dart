import 'dart:async';

import 'package:flutter/material.dart';

abstract class RouteConfig {
  static final appNavigatorKey = GlobalKey<NavigatorState>();

  static FutureOr<RouteInformation> redirectMiddleware(
      RouteInformation info) async {
    return info;

    // TODO: add middleware logic

    // final isLoggedIn = FirebaseAuth.instance.currentUser != null;
    // final isLoggingIn = state.matchedLocation.startsWith(Routes.auth);
    // if (!isLoggedIn && !isLoggingIn) {
    //   return Routes.auth;
    // }

    // // no need to redirect at all
    // return null;
  }
}
