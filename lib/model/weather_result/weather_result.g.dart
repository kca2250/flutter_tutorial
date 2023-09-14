// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherResult _$$_WeatherResultFromJson(Map<String, dynamic> json) =>
    _$_WeatherResult(
      weatherCondition: json['weather_condition'] as String,
      maxTemperature: json['max_temperature'] as int,
      minTemperature: json['min_temperature'] as int,
      date: json['date'] as String,
      hasError: json['hasError'] as bool? ?? false,
    );

Map<String, dynamic> _$$_WeatherResultToJson(_$_WeatherResult instance) =>
    <String, dynamic>{
      'weather_condition': instance.weatherCondition,
      'max_temperature': instance.maxTemperature,
      'min_temperature': instance.minTemperature,
      'date': instance.date,
      'hasError': instance.hasError,
    };
