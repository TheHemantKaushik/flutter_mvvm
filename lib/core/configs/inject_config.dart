import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'inject_config.config.dart';

final inject = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => inject.init();
