import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:sabitou_clients/screens/profile/profile_view.dart';

import '../../goldens.dart';

class CreateProfileViewWidgetds extends StatelessWidget {
  const CreateProfileViewWidgetds({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileView();
  }
}

void main() {
  group('Goldens', () {
    testGoldens('Profile page', (tester) async {
      await multiScreenMultiLocaleGolden(
        tester,
        const CreateProfileViewWidgetds(),
        'profile_page',
      );
    });
  });
}
