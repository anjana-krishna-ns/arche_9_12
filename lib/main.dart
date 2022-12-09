import 'package:flutter/material.dart';
import 'package:slacks_test/pages/Navigation%20bar.dart';
import 'demo/demo.dart';
import 'demo/home_demo.dart';
import 'demo/test.dart';
import 'newarch/log_in/log_in_page.dart';
import 'newarch/screens/home page/banner.dart';
import 'newarch/screens/home page/grid.dart';
import 'newarch/screens/home page/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    );
  }
}
