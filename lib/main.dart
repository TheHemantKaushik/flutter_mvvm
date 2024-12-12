import 'package:example/configs/route_config.dart';
import 'package:example/routes.g.dart';
import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      key: RouteConfig.appNavigatorKey,
      routerConfig: Routefly.routerConfig(
        routes: routes,
        middlewares: [RouteConfig.redirectMiddleware],
      ),
    );
  }
}
