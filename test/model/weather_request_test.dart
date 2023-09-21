import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/model/weather_request/weather_request.dart';

void main() {
  test('引数に何も指定しない場合はデフォルト値が引数に適用される', () {
    const weatherRequest = WeatherRequest();
    expect(weatherRequest.area, 'kyoto');
    expect(weatherRequest.date, '2023-09-12T12:00:00+09:00');
  });

  test('areaに値を指定すると指定した値が適用される', () {
    const weatherRequest = WeatherRequest(area: 'tokyo');
    expect(weatherRequest.area, 'tokyo');
  });

  test('dateに値を指定すると指定した値が適用される', () {
    const weatherRequest = WeatherRequest(date: '2023-09-12T12:00:00+09:00');
    expect(weatherRequest.date, '2023-09-12T12:00:00+09:00');
  });

  group('jsonに適切に変換できているかどうか確認', () {
    const weatherRequestJson = {
      'area': 'tokyo',
      'date': '2023-09-12T12:00:00+09:00',
    };
    const weatherRequest = WeatherRequest(
      area: 'tokyo',
      date: '2023-09-12T12:00:00+09:00',
    );

    test('WeatherRequestクラスのインスタンスからjsonを生成できる', () {
      final toJson = weatherRequest.toJson();
      expect(toJson, weatherRequestJson);
    });

    test('jsonからWeatherRequestクラスのインスタンスを生成できる', () {
      final fromJson = WeatherRequest.fromJson(weatherRequestJson);
      expect(fromJson, weatherRequest);
    });
  });
}
