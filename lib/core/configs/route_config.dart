import 'package:flutter/material.dart';
import 'package:flutter_mvvm/core/utils/shared_prefs.dart';
import 'package:flutter_mvvm/routes.g.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:routefly/routefly.dart';

abstract class RouteConfig {
  static final appNavigatorKey = GlobalKey<NavigatorState>();

  static Future<RouteInformation> middleware(RouteInformation info) async {
    final userRes = await SharedPrefs.getUser();
    final isLoggedIn = userRes.valueOrNull != null;
    final isLoggingIn = info.uri.toString().startsWith(routePaths.auth.login);

    if (!isLoggedIn && !isLoggingIn) {
      return info.redirect(Uri.parse(routePaths.auth.login));
    }

    // no need to redirect at all
    return info;
  }
}
