import 'package:flutter/material.dart';
import 'package:flutter_mvvm/modules/auth/auth_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LogOutButton extends HookConsumerWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      child: Text('Log Out'),
      onPressed: () {
        ref.read(authManagerProvider.notifier).logout();
      },
    );
  }
}
