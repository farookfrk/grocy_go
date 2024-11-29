import 'package:flutter/material.dart';
import 'package:grocy_go/core/app_theme.dart';
import 'package:grocy_go/features/home/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: AppTheme().themeData,
    );
  }
}
