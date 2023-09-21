import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/mixin/show_snackbar.dart';

class MockShowSnackBar with ShowSnackBar {}

void main() {
  // ShowSnackBarのshowSnackBarメソッドをテストする

  final mockShowSnackBar = MockShowSnackBar();

  testWidgets('showSnackBarメソッドを呼び出すとSnackBarが表示される', (tester) async {
    // test widgetの構築
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  // ShowSnackBarのshowSnackBarメソッドを呼び出す
                  mockShowSnackBar.showSnackBar(
                    context: context,
                    message: 'test message',
                    color: Colors.red,
                  );
                },
                child: const Text('showSnackBar'),
              );
            },
          ),
        ),
      ),
    );

    // SnackBarが表示されていないことを確認
    expect(find.byType(SnackBar), findsNothing);

    // ElevatedButtonをタップ
    await tester.tap(find.byType(ElevatedButton));

    // SnackBarが表示されるまで待機
    await tester.pumpAndSettle();

    // SnackBarが表示されていることを確認
    expect(find.byType(SnackBar), findsOneWidget);
  });
}
