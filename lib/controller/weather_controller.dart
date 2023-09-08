import 'package:flutter_training/model/weather.dart';

class WeatherController {
  final Weather _weather = Weather(weatherCondition: '');

  String getWeather() {
    final result = _weather.fetchWeather();
    return result;
  }
}
