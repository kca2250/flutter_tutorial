import 'package:flutter/material.dart';

mixin ShowSnackBar {
  void showSnackBar({
    required BuildContext context,
    required String message,
    required Color color,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }
}
