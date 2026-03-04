import 'package:flutter/material.dart';
import 'package:testing/views/login/login_view.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView()
    );
  }
}

