import 'package:flutter/material.dart';

void main() {
  runApp(const TestAssetApp());
}

class TestAssetApp extends StatelessWidget {
  const TestAssetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image.asset(
            'assets/images/heart1.png',
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
