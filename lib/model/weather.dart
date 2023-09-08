import 'package:yumemi_weather/yumemi_weather.dart';

class Weather {
  // weatherConditionを引数に取るコンストラクタ
  Weather({required this.weatherCondition});

  // weatherConditionを定義
  final String weatherCondition;

  // yumemi_weatherパッケージを使って天気を取得する
  String fetchWeather() {
    final yumemiWeather = YumemiWeather();
    try {
      final weather = yumemiWeather.fetchThrowsWeather('tokyo');
      return weather;
    } on YumemiWeatherError catch (e) {
      print('Failed to get weather information. Error: $e');
      return 'error';
    }
  }
}
