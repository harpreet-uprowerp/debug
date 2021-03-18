import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Carousel Demo', () {
    FlutterDriver driver;
    final basicDemoFinder = find.byValueKey('basic');

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Is working?', () {
      expect(1, equals(1));
    });

    test('Tapping Basic demo takes us to next screen', () async {
      await driver.tap(basicDemoFinder);
      await Future.delayed(Duration(seconds: 2));
    });
  });
}
