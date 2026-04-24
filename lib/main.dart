import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp()); // no const
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // const constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}