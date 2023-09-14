import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_result.freezed.dart';
part 'weather_result.g.dart';

@freezed
class WeatherResult with _$WeatherResult {
  const factory WeatherResult({
    @JsonKey(name: 'weather_condition') required String weatherCondition,
    @JsonKey(name: 'max_temperature') required int maxTemperature,
    @JsonKey(name: 'min_temperature') required int minTemperature,
    @JsonKey(name: 'date') required String date,
    @JsonKey(defaultValue: false) required bool hasError,
  }) = _WeatherResult;

  factory WeatherResult.fromJson(Map<String, dynamic> json) =>
      _$WeatherResultFromJson(json);
}
