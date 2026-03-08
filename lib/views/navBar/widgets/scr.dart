import 'package:flutter/material.dart';

class Scr extends StatelessWidget {
  const Scr({super.key, required this.num, required this.color});
  final int num;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(child: Text("$num")),
    );
  }
}
