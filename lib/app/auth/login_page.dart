import 'package:flutter/material.dart';
import 'package:flutter_mvvm/modules/auth/features/login/login_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Back!'),
        centerTitle: true,
      ),
      body: LoginView(),
    );
  }
}
