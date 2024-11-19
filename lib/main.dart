import 'package:alicious_florist/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Alicious Florist',
        theme: ThemeData(
          useMaterial3: true, // Tetap gunakan ini.
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink, 
          ).copyWith(
            secondary: Colors.pink[400],
            surface: Colors.amber[50],
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
