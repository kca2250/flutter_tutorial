import 'package:flutter/material.dart';
import 'package:flutter_training/widgets/display_weather.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: DisplayWeather(),
        ),
      ),
    );
  }
}
