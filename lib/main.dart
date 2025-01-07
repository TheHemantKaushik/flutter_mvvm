import 'package:flutter_mvvm/core/configs/inject_config.dart';
import 'package:flutter_mvvm/core/configs/route_config.dart';
import 'package:flutter_mvvm/modules/auth/auth_manager.dart';
import 'package:flutter_mvvm/routes.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routefly/routefly.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();

  // CONFIGURE DEPENDENCIES
  configureDependencies();

  runApp(ProviderScope(
    child: const MainApp(),
  ));
}

class MainApp extends HookConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authManagerProvider);

    return MaterialApp.router(
      key: RouteConfig.appNavigatorKey,
      routerConfig: Routefly.routerConfig(
        routes: routes,
        middlewares: [RouteConfig.redirectMiddleware],
      ),
    );
  }
}
