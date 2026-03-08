import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testing/views/login/login_view.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
 SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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

