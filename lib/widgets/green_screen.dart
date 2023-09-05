import 'package:flutter/material.dart';
import 'package:flutter_training/widgets/weather_screen.dart';

class GreenScreen extends StatefulWidget {
  const GreenScreen({super.key});

  @override
  State<GreenScreen> createState() => _GreenScreenState();
}

class _GreenScreenState extends State<GreenScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      WidgetsBinding.instance.endOfFrame.then((_) {
        Navigator.of(context).push(
          MaterialPageRoute<dynamic>(
            builder: (context) {
              return const DisplayWeather();
            },
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
