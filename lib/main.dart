import 'package:extends_vs_mixin/screen/home/HomeWithMixin/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extends vs Mixin',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          toolbarHeight: 40,
        ),
      ),
      home: const HomeMixinScreen(),
    );
  }
}
