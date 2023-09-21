import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/provider/weather_result_provider.dart';

class Tempreratures extends ConsumerWidget {
  const Tempreratures({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherResult = ref.watch(weatherResultProvider);
    final minTemperature = weatherResult.minTemperature;
    final maxTemperature = weatherResult.maxTemperature;

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Text(
              (minTemperature == 0) ? '**℃' : minTemperature.toString(),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
            const Spacer(),
            Text(
              (maxTemperature == 0) ? '**℃' : maxTemperature.toString(),
              style: const TextStyle(fontSize: 18, color: Colors.red),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
