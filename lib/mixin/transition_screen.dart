import 'package:flutter/material.dart';

mixin TransitionScreen {
  // 自動遷移
  void autoTransition(
    BuildContext context, {
    required Widget screen,
  }) {
    Future.delayed(const Duration(seconds: 1), () {
      WidgetsBinding.instance.endOfFrame.then((_) {
        Navigator.of(context).push(
          MaterialPageRoute<dynamic>(
            builder: (context) {
              return screen;
            },
          ),
        );
      });
    });
  }

  // 前の画面に戻る
  void backScreen(BuildContext context, {required Widget screen}) {
    Navigator.of(context).push(
      MaterialPageRoute<dynamic>(
        builder: (context) {
          return screen;
        },
      ),
    );
  }
}
