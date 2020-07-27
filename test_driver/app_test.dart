import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group("Counter App", () {
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byTooltip('Increment');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) driver.close();
    });

    test("starts app at 0", () async {
      expect(await driver.getText(counterTextFinder), "0");
    });

    test("increments app counter", () async {
      // await Future.delayed(Duration(seconds: 2));
      await driver.tap(buttonFinder);
      await Future.delayed(Duration(seconds: 2));
      expect(await driver.getText(counterTextFinder), "1");
    });
  });
}
