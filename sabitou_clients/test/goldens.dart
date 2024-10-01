import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> multiScreenMultiLocaleGolden(
  WidgetTester tester,
  Widget widget,
  String name,
) async {
  await tester.pumpWidgetBuilder(widget);

  // Screenshot the widget in each supported locale.
  await tester.pumpAndSettle();
  await multiScreenGolden(
    tester,
    name,
    devices: [
      const Device(
        name: '1080p',
        size: Size(1920, 1080),
      ),
      const Device(
        name: '4K',
        size: Size(3840, 2160),
        textScale: 2.5,
      ),
      const Device(
        name: 'standard',
        size: Size(375, 667),
        textScale: 2.5,
      ),
    ],
  );
}
