import 'package:flutter/material.dart';

import '../../routes/pages_routes.dart';
import '../../widgets/base_page.dart';

/// User profile screen.
class ProfileView extends StatelessWidget {
  /// Constructor of new [ProfileView].
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePageView(
      itemPage: DashboardLabelPage.profile.name,
      child: const Center(
        child: Text('Your user profile'),
      ),
    );
  }
}