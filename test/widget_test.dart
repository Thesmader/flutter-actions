import 'package:flutter/material.dart';
import 'package:flutter_actions/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Counter increments smoke test", (WidgetTester tester) async {
    //Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    //Verify that counter starts at 0.
    expect(find.text("0"), findsOneWidget);
    expect(find.text("1"), findsNothing);

    //Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    //Verify that counter has incremented.
    expect(find.text("0"), findsNothing);
    expect(find.text("1"), findsOneWidget);
  });
}
