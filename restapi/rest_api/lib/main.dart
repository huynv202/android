import 'package:flutter/material.dart';
import 'package:rest_api/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Rest Api",
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: const MyHomePage(title: 'flutter rest api'),
    );
  }
}
