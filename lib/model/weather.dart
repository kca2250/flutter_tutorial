class Weather {
  // constructor
  Weather(this.weatherCondition);
  // instance variable
  final String weatherCondition;

  // svg file path
  final _sunnyIcon = 'images/sunny.svg';
  final _cloudyIcon = 'images/cloudy.svg';
  final _rainyIcon = 'images/rainy.svg';

  // instance method
  String? getWeatherIcon() {
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
