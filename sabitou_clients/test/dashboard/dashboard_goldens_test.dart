import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:sabitou_clients/screens/dashboard/dashboard_view.dart';

import '../goldens.dart';

void main() {
  group('Goldens', () {
    testGoldens('Dashboard view', (tester) async {
      await multiScreenMultiLocaleGolden(
        tester,
        const DashboardView(),
        'dashboard_view',
      );
    });
  });
}
