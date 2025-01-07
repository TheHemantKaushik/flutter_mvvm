import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mvvm/core/utils/dialog_utils.dart';
import 'package:flutter_mvvm/core/widgets/filled_button_with_loading.dart';
import 'package:flutter_mvvm/modules/auth/features/login/login_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(loginViewModelProvider.notifier);
    final state = ref.watch(loginViewModelProvider).valueOrNull;
    final isSubmitting = state?.loginResponse?.isLoading == true;

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    ref.listen(
      loginViewModelProvider.select((s) => s.valueOrNull?.loginResponse),
      (previous, next) {
        next?.when(
          loading: () => null,
          error: (error, stackTrace) {
            DialogUtils.showSnackbar(context, error.toString(), Type.error);
          },
          data: (data) {
            final message = 'Logged in successfully';
            DialogUtils.showSnackbar(context, message, Type.success);
          },
        );
      },
    );

    useEffect(() {
      emailController.value = emailController.value.copyWith(
        text: state?.email ?? '',
      );
      passwordController.value = passwordController.value.copyWith(
        text: state?.password ?? '',
      );
      return null;
    }, [state]);

    return Center(
      child: Card(
        margin: EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Wrap(
            runSpacing: 20,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  errorText: state?.emailError,
                ),
                enabled: !isSubmitting,
                onChanged: (value) => vm.email = value,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  errorText: state?.passwordError,
                ),
                enabled: !isSubmitting,
                obscureText: true,
                onChanged: (value) => vm.password = value,
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButtonWithLoading(
                  isLoading: isSubmitting,
                  onPressed: () => vm.login(),
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
