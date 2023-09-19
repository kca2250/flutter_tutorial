import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training/provider/weather_result_provider.dart';

class WeatherImage extends ConsumerWidget {
  const WeatherImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherResult = ref.watch(weatherResultProvider);
    final weatherCondition = weatherResult.weatherCondition;

    return Center(
      child: (weatherCondition == '')
          ? const SizedBox(
              height: 200,
              width: 200,
              child: Placeholder(),
            )
          : SizedBox(
              width: 200,
              height: 200,
              child: SvgPicture.asset('images/$weatherCondition.svg'),
            ),
    );
  }
}
