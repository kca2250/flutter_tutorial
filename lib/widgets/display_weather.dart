import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training/controller/weather_controller.dart';

class DisplayWeather extends StatefulWidget {
  const DisplayWeather({super.key});

  @override
  State<DisplayWeather> createState() => _DisplayWeatherState();
}

class _DisplayWeatherState extends State<DisplayWeather>
    with WidgetsBindingObserver {
  String _weatherIcon = '';

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
    setState(() {
      _weatherIcon = WeatherController().getIconPath();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 2,
        ),
        Center(
          child: (_weatherIcon == '')
              ? const SizedBox(
                  height: 200,
                  width: 200,
                  child: Placeholder(
                    fallbackHeight: 100,
                    fallbackWidth: 100,
                  ),
                )
              : SizedBox(
                  width: 200,
                  height: 200,
                  child: SvgPicture.asset(_weatherIcon),
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
                onPressed: () {},
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
    );
  }
}
