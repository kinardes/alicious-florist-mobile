import 'package:alicious_florist/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.pink,
      ).copyWith(
        secondary: Colors.pink[400],
        surface: Colors.amber[50], // Set the background color here
      ),
      useMaterial3: true,
    ),
      home:MyHomePage(),
    );
  }
}

