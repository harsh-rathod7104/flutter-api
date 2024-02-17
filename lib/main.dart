import 'package:blocapi/models/movie_model.dart';
import 'package:blocapi/repositories/home_repository.dart';
import 'package:blocapi/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() async {
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
