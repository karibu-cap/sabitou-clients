import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../screens/connection/connection_view.dart';
import '../screens/dashboard/dashboard_view.dart';
import '../screens/registration/registration_view.dart';
import '../utils/constants.dart';
import 'middleware_page.dart';
import 'pages_routes.dart';

/// The app routes.
final class AppRouter {
  /// The list of app routes.
  static List<GetPage<dynamic>> get pageRoutes => [
        GetPage(
          name: PagesRoutes.home.pattern,
          middlewares: [HomeMiddleware()],
          page: () => const MiddlewarePage(
            child: DashboardView(),
          ),
        ),
        GetPage(
          name: PagesRoutes.connection.pattern,
          page: () => const MiddlewarePage(
            child: ConnectionView(),
          ),
        ),
        GetPage(
          name: PagesRoutes.registration.pattern,
          page: () => const MiddlewarePage(
            child: RegistrationView(),
          ),
        ),
      ];

  /// Navigates to nex page.
  static void push(String uri, {Object? extra}) {
    Get.toNamed(uri, arguments: extra);
  }

  /// Navigates to next page and replace all the stack page.
  static void go(String uri, {Object? extra}) {
    Get.offAllNamed(uri, arguments: extra);
  }

  /// Navigates to next page and replace the previous page.
  static void pushReplacementNamed(
    String uri, {
    Object? extra,
  }) {
    Get.offNamed(uri, arguments: extra);
  }

  /// Gets the current route name.
  static String getCurrentLocation() {
    return Get.currentRoute;
  }

  /// Checks if there are routes to pop.
  static bool canPop() {
    return Get.key.currentState?.canPop() ?? false;
  }

  /// Pops the current route.
  static void onPop() {
    Get.back();
  }
}

/// The first open time middleware.
class HomeMiddleware extends GetMiddleware {
  final _box = GetStorage();

  @override
  RouteSettings? redirect(String? route) {
    final bool isFirstOpenTime =
        _box.read(PreferencesKey.isFirstOpenTime) ?? true;

    if (isFirstOpenTime) {
      return RouteSettings(name: PagesRoutes.connection.pattern);
    }

    /// [TODO] verify whether the user is registered or not.
    return null;
  }
}
