import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LogOutView extends HookConsumerWidget {
  const LogOutView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      child: Text('Log Out'),
      onPressed: () {},
    );
  }
}
