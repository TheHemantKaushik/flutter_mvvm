import 'package:flutter_mvvm/routes.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routefly/routefly.dart';

class AppPage extends HookConsumerWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
          children: [
            Text('AppPage'),
            TextButton(
              onPressed: () {
                Routefly.pushNavigate(routePaths.auth.login);
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
