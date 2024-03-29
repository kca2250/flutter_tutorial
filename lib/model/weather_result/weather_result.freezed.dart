// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResult _$WeatherResultFromJson(Map<String, dynamic> json) {
  return _WeatherResult.fromJson(json);
}

/// @nodoc
mixin _$WeatherResult {
  @JsonKey(name: 'weather_condition')
  String get weatherCondition => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_temperature')
  int get maxTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_temperature')
  int get minTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get hasError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResultCopyWith<WeatherResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResultCopyWith<$Res> {
  factory $WeatherResultCopyWith(
          WeatherResult value, $Res Function(WeatherResult) then) =
      _$WeatherResultCopyWithImpl<$Res, WeatherResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'weather_condition') String weatherCondition,
      @JsonKey(name: 'max_temperature') int maxTemperature,
      @JsonKey(name: 'min_temperature') int minTemperature,
      @JsonKey(name: 'date') String date,
      @JsonKey(defaultValue: false) bool hasError,
      String? errorMessage});
}

/// @nodoc
class _$WeatherResultCopyWithImpl<$Res, $Val extends WeatherResult>
    implements $WeatherResultCopyWith<$Res> {
  _$WeatherResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherCondition = null,
    Object? maxTemperature = null,
    Object? minTemperature = null,
    Object? date = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as String,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherResultCopyWith<$Res>
    implements $WeatherResultCopyWith<$Res> {
  factory _$$_WeatherResultCopyWith(
          _$_WeatherResult value, $Res Function(_$_WeatherResult) then) =
      __$$_WeatherResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'weather_condition') String weatherCondition,
      @JsonKey(name: 'max_temperature') int maxTemperature,
      @JsonKey(name: 'min_temperature') int minTemperature,
      @JsonKey(name: 'date') String date,
      @JsonKey(defaultValue: false) bool hasError,
      String? errorMessage});
}

/// @nodoc
class __$$_WeatherResultCopyWithImpl<$Res>
    extends _$WeatherResultCopyWithImpl<$Res, _$_WeatherResult>
    implements _$$_WeatherResultCopyWith<$Res> {
  __$$_WeatherResultCopyWithImpl(
      _$_WeatherResult _value, $Res Function(_$_WeatherResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherCondition = null,
    Object? maxTemperature = null,
    Object? minTemperature = null,
    Object? date = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_WeatherResult(
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as String,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherResult implements _WeatherResult {
  const _$_WeatherResult(
      {@JsonKey(name: 'weather_condition') required this.weatherCondition,
      @JsonKey(name: 'max_temperature') required this.maxTemperature,
      @JsonKey(name: 'min_temperature') required this.minTemperature,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(defaultValue: false) required this.hasError,
      this.errorMessage});

  factory _$_WeatherResult.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResultFromJson(json);

  @override
  @JsonKey(name: 'weather_condition')
  final String weatherCondition;
  @override
  @JsonKey(name: 'max_temperature')
  final int maxTemperature;
  @override
  @JsonKey(name: 'min_temperature')
  final int minTemperature;
  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(defaultValue: false)
  final bool hasError;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WeatherResult(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature, date: $date, hasError: $hasError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherResult &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weatherCondition, maxTemperature,
      minTemperature, date, hasError, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherResultCopyWith<_$_WeatherResult> get copyWith =>
      __$$_WeatherResultCopyWithImpl<_$_WeatherResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherResultToJson(
      this,
    );
  }
}

abstract class _WeatherResult implements WeatherResult {
  const factory _WeatherResult(
      {@JsonKey(name: 'weather_condition')
      required final String weatherCondition,
      @JsonKey(name: 'max_temperature') required final int maxTemperature,
      @JsonKey(name: 'min_temperature') required final int minTemperature,
      @JsonKey(name: 'date') required final String date,
      @JsonKey(defaultValue: false) required final bool hasError,
      final String? errorMessage}) = _$_WeatherResult;

  factory _WeatherResult.fromJson(Map<String, dynamic> json) =
      _$_WeatherResult.fromJson;

  @override
  @JsonKey(name: 'weather_condition')
  String get weatherCondition;
  @override
  @JsonKey(name: 'max_temperature')
  int get maxTemperature;
  @override
  @JsonKey(name: 'min_temperature')
  int get minTemperature;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(defaultValue: false)
  bool get hasError;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherResultCopyWith<_$_WeatherResult> get copyWith =>
      throw _privateConstructorUsedError;
}
