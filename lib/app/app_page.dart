import 'package:flutter_mvvm/modules/auth/auth_manager.dart';
import 'package:flutter_mvvm/modules/auth/widgets/log_out_button.dart';
import 'package:flutter_mvvm/routes.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routefly/routefly.dart';

class AppPage extends HookConsumerWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authManagerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('AppPage'),
        centerTitle: true,
      ),
      body: Center(
        child: authState.when(
          loading: () => CircularProgressIndicator(),
          error: (error, stackTrace) => Text('Failed to fetch user'),
          data: (user) {
            if (user == null) {
              return OutlinedButton(
                onPressed: () {
                  Routefly.pushNavigate(routePaths.auth.login);
                },
                child: Text('Login'),
              );
            } else {
              return Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 20,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Routefly.pushNavigate(routePaths.posts.path);
                    },
                    child: Text('Posts'),
                  ),
                  LogOutButton(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
