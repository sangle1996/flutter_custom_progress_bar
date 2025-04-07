import 'package:flutter/material.dart';
import 'progress_demo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linear Progress Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProgressDemoPage(),
    );
  }
}