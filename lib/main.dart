import 'package:flutter/material.dart';
import 'package:tyre_io/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tyre.io',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            background: const Color(0xff46474b), seedColor: Colors.green),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff46474b),
          
        ),
      ),
      home: const LandingScreen(),
    );
  }
}
