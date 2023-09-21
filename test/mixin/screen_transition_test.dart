import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/mixin/screen_transition.dart';
import '../mock/widget/transition_test_next_widget.dart';

class MockScreenTransitionClass with ScreenTransition {}

Widget mockScreen = MaterialApp(
  home: Scaffold(
    body: Container(),
  ),
);

void main() {
  final mockScreenTransition = MockScreenTransitionClass();

  testWidgets('autoTransitionは1秒後に次の画面に遷移するかどうかを確認', (tester) async {
    // test widgetの構築
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(),
        ),
      ),
    );

    // autoTransition関数の呼び出し
    mockScreenTransition.autoTransition(
      tester.element(find.byType(Scaffold)),
      screen: const NextScreen(),
    );

    // 遷移前の1秒間の遅延
    await tester.pump(const Duration(seconds: 1));

    // 遷移
    await tester.pumpAndSettle();

    // 次の画面が表示されるかどうかを確認
    expect(find.byType(NextScreen), findsOneWidget);
  });

  // pushNewScreen関数のテスト
  testWidgets('pushNewScreen関数で次の画面に遷移するかどうかを確認', (tester) async {
    // test widgetの構築
    await tester.pumpWidget(mockScreen);

    // pushNewScreen関数の呼び出し
    mockScreenTransition.pushNewScreen(
      tester.element(find.byType(Scaffold)),
      screen: const NextScreen(),
    );

    // 遷移
    await tester.pumpAndSettle();

    // 次の画面が表示されるかどうかを確認
    expect(find.byType(NextScreen), findsOneWidget);
  });
}
