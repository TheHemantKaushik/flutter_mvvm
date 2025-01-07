import 'package:flutter_mvvm/modules/auth/auth_api.dart';
import 'package:injectable/injectable.dart';

abstract class UserRepository {}

@LazySingleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl({
    required this.authService,
  });

  final AuthApi authService;
}
