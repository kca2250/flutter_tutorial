import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/model/weather_result/weather_result.dart';

void main() {
  group('hasError = false', () {
    const hasNotErrorWeatherResult = WeatherResult(
      weatherCondition: 'sunny',
      maxTemperature: 20,
      minTemperature: 12,
      date: '2023-09-12T12:00:00+09:00',
      hasError: false,
    );

    test(
      'hasErrorがfalseの時errorMessageプロパティを持たない',
      () => {
        expect(hasNotErrorWeatherResult.weatherCondition, 'sunny'),
        expect(hasNotErrorWeatherResult.maxTemperature, 20),
        expect(hasNotErrorWeatherResult.minTemperature, 12),
        expect(hasNotErrorWeatherResult.date, '2023-09-12T12:00:00+09:00'),
        expect(hasNotErrorWeatherResult.hasError, false),
        expect(hasNotErrorWeatherResult.errorMessage, null),
      },
    );
  });

  group('hasError = true', () {
    const hasErrorWeatherResult = WeatherResult(
      weatherCondition: 'sunny',
      maxTemperature: 20,
      minTemperature: 12,
      date: '2023-09-12T12:00:00+09:00',
      hasError: true,
      errorMessage: 'error message',
    );

    test(
      'hasErrorがtrueの時errorMessageプロパティを持つ',
      () => {
        expect(hasErrorWeatherResult.weatherCondition, 'sunny'),
        expect(hasErrorWeatherResult.maxTemperature, 20),
        expect(hasErrorWeatherResult.minTemperature, 12),
        expect(hasErrorWeatherResult.date, '2023-09-12T12:00:00+09:00'),
        expect(hasErrorWeatherResult.hasError, true),
        expect(hasErrorWeatherResult.errorMessage, 'error message'),
      },
    );
  });

  group('jsonの変換が適切にできているかどうかを確認', () {
    const weatherResultJson = {
      'weather_condition': 'sunny',
      'max_temperature': 20,
      'min_temperature': 12,
      'date': '2023-09-12T12:00:00+09:00',
      'hasError': false,
    };

    const weatherResult = WeatherResult(
      weatherCondition: 'sunny',
      maxTemperature: 20,
      minTemperature: 12,
      date: '2023-09-12T12:00:00+09:00',
      hasError: false,
    );

    test(
      'jsonからWeatherResultクラスのインスタンスを生成できる',
      () {
        final fromJson = WeatherResult.fromJson(weatherResultJson);
        expect(fromJson, weatherResult);
      },
    );

    test(
      'WeatherResultクラスのインスタンスからjsonを生成できる',
      () {
        final toJson = weatherResult.toJson();
        expect(toJson, weatherResultJson);
      },
    );
  });
}
