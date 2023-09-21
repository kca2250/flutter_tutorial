import 'package:flutter/material.dart';

mixin ShowAlert {
  AlertDialog _alertBuilder(BuildContext context, {required String message}) {
    return AlertDialog(
      title: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }

  void showAlert(BuildContext context, String message) {
    showDialog<Widget>(
      context: context,
      builder: (context) => _alertBuilder(context, message: message),
    );
  }
}
