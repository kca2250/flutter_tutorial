import 'package:yumemi_weather/yumemi_weather.dart';

class Weather {
  // weatherConditionを引数に取るコンストラクタ
  Weather({required this.weatherCondition});

  // weatherConditionを定義
  final String weatherCondition;

  // iconのパスを定義
  final _sunnyIcon = 'images/sunny.svg';
  final _cloudyIcon = 'images/cloudy.svg';
  final _rainyIcon = 'images/rainy.svg';

  // yumemi_weatherパッケージを使って天気を取得する
  String fetchWeather() {
    final yumemiWeather = YumemiWeather();
    final weather = yumemiWeather.fetchSimpleWeather();
    return weather;
  }

  // fetchWeather()から返される値に応じて、天気アイコンパスを返す
  String? getWeatherIcon() {
    final weatherCondition = fetchWeather();
    switch (weatherCondition) {
      case 'cloudy':
        return _cloudyIcon;
      case 'rainy':
        return _rainyIcon;
      default:
        return _sunnyIcon;
    }
  }
}
