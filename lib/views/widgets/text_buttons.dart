import 'package:flutter/material.dart';
import 'package:flutter_training/mixin/screen_transition.dart';
import 'package:flutter_training/views/screens/green_screen.dart';
import 'package:flutter_training/views/widgets/custom_text_button.dart';

class TextButtons extends StatelessWidget with ScreenTransition {
  const TextButtons({
    super.key,
    required this.reloadWeatherIcon,
  });
  final void Function() reloadWeatherIcon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const Spacer(
            flex: 2,
          ),
          CustomTextButton(
            text: 'Close',
            onPressed: () =>
                pushNewScreen(context, screen: const GreenScreen()),
          ),
          const Spacer(),
          CustomTextButton(
            onPressed: reloadWeatherIcon,
            text: 'Reload',
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
