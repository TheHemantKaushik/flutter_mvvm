// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../modules/auth/auth_api.dart' as _i856;
import '../../modules/post/post_repository.dart' as _i762;
import '../../modules/post/post_service.dart' as _i67;
import '../../modules/user/user_repository.dart' as _i188;
import '../../modules/user/user_service.dart' as _i95;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i67.PostService>(() => _i67.PostServiceImpl());
    gh.lazySingleton<_i95.UserService>(() => _i95.UserServiceImpl());
    gh.lazySingleton<_i856.AuthApi>(() => _i856.AuthApiImpl());
    gh.lazySingleton<_i188.UserRepository>(
        () => _i188.UserRepositoryImpl(authService: gh<_i856.AuthApi>()));
    gh.lazySingleton<_i762.PostRepository>(
        () => _i762.PostRepositoryImpl(authService: gh<_i856.AuthApi>()));
    return this;
  }
}
