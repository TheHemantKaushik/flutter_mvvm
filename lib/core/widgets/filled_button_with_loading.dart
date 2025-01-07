import 'package:flutter/material.dart';

class FilledButtonWithLoading extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final VoidCallback onPressed;

  const FilledButtonWithLoading({
    super.key,
    required this.isLoading,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: isLoading ? null : onPressed,
      child: isLoading
          ? Container(
              padding: const EdgeInsets.all(5),
              width: 30,
              height: 30,
              child: CircularProgressIndicator(),
            )
          : Text('Login'),
    );
  }
}
