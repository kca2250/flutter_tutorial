import 'dart:convert';

import 'package:flutter_training/model/weather_request/weather_request.dart';
import 'package:flutter_training/model/weather_result/weather_result.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherController {
  WeatherResult getWeather() {
    try {
      final responseJson = YumemiWeather().fetchWeather(
        jsonEncode(
          const WeatherRequest().toJson(),
        ),
      );

      final response = WeatherResult.fromJson(
        jsonDecode(responseJson) as Map<String, dynamic>,
      );

      return response;
    } on YumemiWeatherError catch (e) {
      return WeatherResult(
        weatherCondition: '',
        maxTemperature: 0,
        minTemperature: 0,
        date: '',
        hasError: true,
        errorMessage: 'エラーが発生しました: $e ',
      );
    }
  }
}
