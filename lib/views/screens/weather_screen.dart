import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training/controller/weather_controller.dart';
import 'package:flutter_training/mixin/show_snackbar.dart';
import 'package:flutter_training/mixin/transition_screen.dart';
import 'package:flutter_training/views/screens/green_screen.dart';

class DisplayWeather extends StatefulWidget {
  const DisplayWeather({super.key});

  @override
  State<DisplayWeather> createState() => _DisplayWeatherState();
}

class _DisplayWeatherState extends State<DisplayWeather>
    with WidgetsBindingObserver, SnackBarMixin, TransitionScreen {
  String _weather = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  void changeWeatherIcon() {
    final result = WeatherController().getWeather();
    if (result == 'error') {
      showAlert(context, 'Failed to get weather information.');
      return;
    }
    setState(() {
      _weather = result;
    });

    showSnackBar(
      context: context,
      message: 'weather condition: $_weather',
      color: Colors.blue,
    );
  }

  AlertDialog _alertBuilder(BuildContext context, {required String message}) {
    return AlertDialog(
      title: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }

  void showAlert(BuildContext context, String message) {
    showDialog<Widget>(
      context: context,
      builder: (context) => _alertBuilder(context, message: message),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Center(
              child: (_weather == '')
                  ? const SizedBox(
                      height: 200,
                      width: 200,
                      child: Placeholder(),
                    )
                  : SizedBox(
                      width: 200,
                      height: 200,
                      child: SvgPicture.asset('images/$_weather.svg'),
                    ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Text(
                      '** ℃',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '** ℃',
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: Row(
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  TextButton(
                    onPressed: () => backScreen(
                      context,
                      screen: const GreenScreen(),
                    ),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: changeWeatherIcon,
                    child: const Text(
                      'Reload',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
