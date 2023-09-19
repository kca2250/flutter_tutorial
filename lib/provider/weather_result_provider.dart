import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/model/weather_result/weather_result.dart';

final weatherResultProvider = StateProvider(
  (ref) {
    return const WeatherResult(
      weatherCondition: '',
      maxTemperature: 0,
      minTemperature: 0,
      date: '',
      hasError: false,
    );
  },
);
