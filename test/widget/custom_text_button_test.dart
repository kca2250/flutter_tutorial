import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/views/widgets/custom_text_button.dart';

void main() {
  group(
    'CustomTextButton',
    () {
      testWidgets('textが表示されている', (tester) async {
        // pumpWidgetでWidgetをレンダリングする
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: CustomTextButton(
                onPressed: () {},
                text: 'Close',
              ),
            ),
          ),
        );

        expect(find.byType(TextButton), findsOneWidget);
        expect(find.text('Close'), findsOneWidget);
      });

      testWidgets('onPressの処理が実行される', (tester) async {
        var isPressed = false;
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: CustomTextButton(
                onPressed: () => isPressed = true,
                text: 'Close',
              ),
            ),
          ),
        );

        await tester.tap(find.byType(TextButton));
        expect(isPressed, true);
      });
    },
  );
}
