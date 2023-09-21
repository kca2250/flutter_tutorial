import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/controller/weather_controller.dart';
import 'package:flutter_training/mixin/screen_transition.dart';
import 'package:flutter_training/mixin/show_alert.dart';
import 'package:flutter_training/mixin/show_snackbar.dart';
import 'package:flutter_training/provider/weather_result_provider.dart';
import 'package:flutter_training/views/widgets/temperatures.dart';
import 'package:flutter_training/views/widgets/text_buttons.dart';
import 'package:flutter_training/views/widgets/weather_image.dart';

class WeatherScreen extends ConsumerWidget
    with WidgetsBindingObserver, ShowSnackBar, ScreenTransition, ShowAlert {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchWeatherResult = ref.watch(weatherResultProvider);
    final readWeatherResult = ref.read(weatherResultProvider.notifier);

    void reloadWeatherIcon() {
      final weather = WeatherController().getWeather();
      if (weather.hasError) {
        showAlert(context, weather.errorMessage ?? 'internal error');
        return;
      }
      readWeatherResult.state = weather;
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
            if (watchWeatherResult.weatherCondition == '')
              const SizedBox(
                height: 200,
                width: 200,
                child: Placeholder(),
              )
            else
              SvgImage(
                fileName: watchWeatherResult.weatherCondition,
              ),
            const Tempreratures(),
            const Spacer(),
            TextButtons(
              reloadWeatherIcon: reloadWeatherIcon,
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
