import 'package:flutter/material.dart';
import 'package:tpte_02/pages/home_page.dart';

void main() {
  // API KEY: 1048177803664f7a920e9b4670daf541
  runApp(const MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
