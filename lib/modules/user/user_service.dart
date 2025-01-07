import 'package:injectable/injectable.dart';

abstract class UserService {}

@LazySingleton(as: UserService)
class UserServiceImpl extends UserService {}
