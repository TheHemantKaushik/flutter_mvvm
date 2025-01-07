import 'package:injectable/injectable.dart';

abstract class PostService {}

@LazySingleton(as: PostService)
class PostServiceImpl extends PostService {}
