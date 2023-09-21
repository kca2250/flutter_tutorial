import 'package:flutter/material.dart';
import 'package:flutter_training/mixin/screen_transition.dart';
import 'transition_test_next_widget.dart';

class TestWidget extends StatelessWidget with ScreenTransition {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ElevatedButton(
          onPressed: () {
            autoTransition(
              context,
              screen: const NextScreen(),
            );
          },
          child: const Text('Navigate'),
        ),
      ),
    );
  }

  // ここに autoTransition 関数を配置します
}
