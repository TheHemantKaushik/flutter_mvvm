import 'package:flutter_mvvm/modules/auth/auth_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_form_view_model.freezed.dart';
part 'login_form_view_model.g.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default('') String email,
    String? emailError,
    @Default('') String password,
    String? passwordError,
    @Default(false) bool isSubmitted,
    AsyncValue<void>? loginResponse,
  }) = _LoginFormState;
}

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  FutureOr<LoginFormState> build() {
    return LoginFormState(
      email: 'user@test.com',
      password: '123456',
    );
  }

  set email(String value) {
    String? emailError;
    if (value.isEmpty) {
      emailError = 'Email is required';
    } else if (!value.contains('@') || !value.contains('.')) {
      emailError = 'Invalid email format';
    } else {
      emailError = null;
    }

    state = AsyncValue.data(state.requireValue.copyWith(
      email: value,
      emailError: state.requireValue.isSubmitted ? emailError : null,
      loginResponse: null,
    ));
  }

  set password(String value) {
    String? passwordError;
    if (value.isEmpty) {
      passwordError = 'Password is required';
    } else if (value.length < 6) {
      passwordError = 'Password must be at least 6 characters long';
    } else {
      passwordError = null;
    }

    state = AsyncValue.data(state.requireValue.copyWith(
      password: value,
      passwordError: state.requireValue.isSubmitted ? passwordError : null,
      loginResponse: null,
    ));
  }

  LoginFormState? _validateState() {
    state = AsyncValue.data(state.requireValue.copyWith(
      isSubmitted: true,
    ));

    email = state.requireValue.email;
    password = state.requireValue.password;

    bool isValid = state.requireValue.emailError == null &&
        state.requireValue.passwordError == null;

    return isValid ? state.requireValue : null;
  }

  Future<void> login() async {
    final validState = _validateState();

    if (validState == null) {
      state = AsyncValue.data(state.requireValue.copyWith(
        loginResponse: AsyncValue.error(
          'Please fill all the required fields',
          StackTrace.current,
        ),
      ));
      return;
    }

    state = AsyncValue.data(state.requireValue.copyWith(
      loginResponse: AsyncValue.loading(),
    ));

    final res = await ref
        .read(authManagerProvider.notifier)
        .login(validState.email, validState.password);

    state = AsyncValue.data(state.requireValue.copyWith(
      loginResponse: res,
    ));
  }
}
