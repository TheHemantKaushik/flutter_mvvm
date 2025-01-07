import 'package:flutter/material.dart';
import 'package:flutter_mvvm/modules/auth/widgets/login_form.dart';
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
      body: LoginForm(),
    );
  }
}
