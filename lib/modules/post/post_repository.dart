import 'package:flutter_mvvm/modules/auth/auth_api.dart';
import 'package:injectable/injectable.dart';

abstract class PostRepository {}

@LazySingleton(as: PostRepository)
class PostRepositoryImpl extends PostRepository {
  PostRepositoryImpl({
    required this.authService,
  });

  final AuthApi authService;
}
