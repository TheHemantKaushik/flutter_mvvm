import 'package:flutter/material.dart';
import 'package:mvvm/mvvm.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final calc = Calculator();
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World! ${calc.addOne(1)}'),
        ),
      ),
    );
  }
}
