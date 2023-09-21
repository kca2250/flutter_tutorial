import 'package:flutter/material.dart';
import 'package:flutter_training/mixin/screen_transition.dart';
import 'package:flutter_training/views/screens/weather_screen.dart';

class GreenScreen extends StatefulWidget {
  const GreenScreen({super.key});

  @override
  State<GreenScreen> createState() => _GreenScreenState();
}

class _GreenScreenState extends State<GreenScreen>
    with WidgetsBindingObserver, ScreenTransition {
  @override
  void initState() {
    super.initState();
    autoTransition(
      context,
      screen: const WeatherScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
