import 'package:flutter/material.dart';
import 'package:flutteras9/Card_Page.dart';
import 'package:flutteras9/HomeScreen.dart';
import 'package:flutteras9/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}



