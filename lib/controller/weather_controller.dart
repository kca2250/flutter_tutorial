import 'package:flutter_training/model/weather.dart';

class WeatherController {
  final Weather _weather = Weather(weatherCondition: '');

  // _weatherのgetWeatherIcon()を呼び出して天気アイコンパスを取得する
  String getIconPath() {
    return _weather.getWeatherIcon()!;
  }
}
