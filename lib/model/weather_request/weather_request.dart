import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_request.freezed.dart';
part 'weather_request.g.dart';

@freezed
class WeatherRequest with _$WeatherRequest {
  const factory WeatherRequest({
    @Default('kyoto') String area,
    @Default('2023-09-12T12:00:00+09:00') String date,
  }) = _WeatherRequest;

  factory WeatherRequest.fromJson(Map<String, dynamic> json) =>
      _$WeatherRequestFromJson(json);
}
