import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/controller/weather_controller.dart';
import 'package:flutter_training/mixin/screen_transition.dart';
import 'package:flutter_training/mixin/show_snackbar.dart';
import 'package:flutter_training/provider/weather_result_provider.dart';
import 'package:flutter_training/views/widgets/buttons.dart';
import 'package:flutter_training/views/widgets/temperatures.dart';
import 'package:flutter_training/views/widgets/weather_image.dart';

class WeatherScreen extends ConsumerWidget
    with WidgetsBindingObserver, ShowSnackBar, ScreenTransition {
  const WeatherScreen({super.key});

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
  Widget build(BuildContext context, WidgetRef ref) {
    void changeWeatherIcon() {
      final weather = WeatherController().getWeather();
      if (weather.hasError) {
        showAlert(context, weather.errorMessage ?? 'internal error');
        return;
      }
      ref.read(weatherResultProvider.notifier).state = weather;
      showSnackBar(
        context: context,
        message: 'weather condition changed',
        color: Colors.blue,
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const WeatherImage(),
            const Tempreratures(),
            const Spacer(),
            Buttons(onPress: changeWeatherIcon),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
