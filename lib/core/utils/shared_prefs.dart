import 'dart:convert';

import 'package:async/async.dart';
import 'package:flutter_mvvm/modules/user/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefs {
  static const _user = 'user';

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<User> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonStr = prefs.getString(_user);
    return User.fromJson(jsonDecode(jsonStr!));
    // return Result.capture(Future.microtask(() async {
    //   final prefs = await SharedPreferences.getInstance();
    //   final jsonStr = prefs.getString(_user);
    //   return User.fromJson(jsonDecode(jsonStr!));
    // }));
  }

  static Future<Result<void>> setUser(User? user) async {
    return Result.capture(Future.microtask(() async {
      final prefs = await SharedPreferences.getInstance();
      if (user == null) {
        await prefs.remove(_user);
      } else {
        await prefs.setString(_user, jsonEncode(user.toJson()));
      }
    }));
  }
}
