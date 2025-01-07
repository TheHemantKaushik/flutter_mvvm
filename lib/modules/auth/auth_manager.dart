import 'package:flutter_mvvm/core/configs/inject_config.dart';
import 'package:flutter_mvvm/modules/auth/auth_api.dart';
import 'package:flutter_mvvm/modules/user/models/user.dart';
import 'package:flutter_mvvm/core/utils/shared_prefs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_manager.g.dart';

@Riverpod(keepAlive: true)
class AuthManager extends _$AuthManager {
  @override
  Future<User?> build() async {
    final userRes = await SharedPrefs.getUser();
    return userRes.valueOrNull;
  }

  Future<AsyncValue<void>> login(String email, String password) async {
    state = AsyncValue.loading();
    final res = await inject<AuthApi>().login(email, password);
    if (res.hasValue) {
      await SharedPrefs.setUser(res.value);
      ref.invalidateSelf();
    }
    return res;
  }

  Future<AsyncValue<void>> logout() async {
    state = AsyncValue.loading();
    final res = await inject<AuthApi>().logout();
    if (res.hasValue) {
      await SharedPrefs.setUser(null);
      ref.invalidateSelf();
    }
    return res;
  }
}
