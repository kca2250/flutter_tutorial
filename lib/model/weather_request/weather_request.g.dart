// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherRequest _$$_WeatherRequestFromJson(Map<String, dynamic> json) =>
    _$_WeatherRequest(
      area: json['area'] as String? ?? 'kyoto',
      date: json['date'] as String? ?? '2023-09-12T12:00:00+09:00',
    );

Map<String, dynamic> _$$_WeatherRequestToJson(_$_WeatherRequest instance) =>
    <String, dynamic>{
      'area': instance.area,
      'date': instance.date,
    };
