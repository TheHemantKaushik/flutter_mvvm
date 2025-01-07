import 'package:flutter/material.dart';

enum Type { success, error, normal }

abstract class DialogUtils {
  static void showSnackbar(BuildContext context, String message, [Type? type]) {
    final snackbar = SnackBar(
      content: Text(message),
      backgroundColor: type == Type.success
          ? Colors.green
          : type == Type.error
              ? Colors.red
              : null,
    );
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(snackbar);
  }
}
