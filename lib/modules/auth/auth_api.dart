import 'package:flutter_mvvm/modules/user/models/user.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

abstract class AuthApi {
  Future<AsyncValue<User>> login(String email, String password);
  Future<AsyncValue<void>> logout();
}

@LazySingleton(as: AuthApi)
class AuthApiImpl extends AuthApi {
  @override
  Future<AsyncValue<User>> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 3));

    if (email == 'user@test.com' && password == '123456') {
      return AsyncValue.data(User(
        id: '1',
        name: 'User 1',
        email: email,
      ));
    }

    return AsyncValue.error('Invalid email or password', StackTrace.current);
  }

  @override
  Future<AsyncValue<void>> logout() async {
    await Future.delayed(Duration(seconds: 3));
    return AsyncValue.data(null);
  }
}
