import 'package:flutter/material.dart';
import 'package:flutter_mvvm/routes.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routefly/routefly.dart';

class PostListPage extends HookConsumerWidget {
  const PostListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Routefly.push(routePaths.posts.add);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Text('PostListPage'),
      ),
    );
  }
}
