import 'package:flutter/material.dart';
import 'package:flutter_training/mixin/transition_screen.dart';
import 'package:flutter_training/views/screens/green_screen.dart';

class Buttons extends StatelessWidget with TransitionScreen {
  const Buttons({super.key, required this.onPress});
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const Spacer(
            flex: 2,
          ),
          TextButton(
            onPressed: () => backScreen(
              context,
              screen: const GreenScreen(),
            ),
            child: const Text(
              'Close',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onPress,
            child: const Text(
              'Reload',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
