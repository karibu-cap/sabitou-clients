import 'package:flutter/material.dart';

import '../../routes/pages_routes.dart';
import '../../services/internationalization/internationalization.dart';
import '../../widgets/base_page.dart';

/// The home screen.
final class DashboardView extends StatelessWidget {
  /// Constructor of new [DashboardView].
  const DashboardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasePageView(
      itemPage: DashboardLabelPage.dashboard.name,
      child: Center(
        child: Text(AppInternationalizationService.to.dashboard),
      ),
    );
  }
}
