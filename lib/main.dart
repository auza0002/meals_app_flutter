import 'package:flutter/material.dart';

final theme = ThemeData(
  useMaterial3: true, 
  colorScheme: ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: const Color.fromARGB(255, 131, 57, 0),)
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: // TODO: Add home: property,
    );
  }
}
