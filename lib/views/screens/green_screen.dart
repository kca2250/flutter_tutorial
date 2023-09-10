import 'package:flutter/material.dart';
import 'package:flutter_training/mixin/transition_screen.dart';
import 'package:flutter_training/views/screens/weather_screen.dart';

class GreenScreen extends StatefulWidget {
  const GreenScreen({super.key});

  @override
  State<GreenScreen> createState() => _GreenScreenState();
}

class _GreenScreenState extends State<GreenScreen>
    with WidgetsBindingObserver, TransitionScreen {
  @override
  void initState() {
    super.initState();
    autoTransition(
      context,
      screen: const DisplayWeather(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
