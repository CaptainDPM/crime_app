import 'package:crime_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CrimeApp());
}

class CrimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}