import 'package:get/get.dart';

import '../screens/connection/connection_view.dart';
import '../screens/dashboard/dashboard_view.dart';
import '../screens/middleware_page.dart';
import '../screens/registration/registration_view.dart';
import '../screens/stores/stores_view.dart';
import 'pages_routes.dart';

/// The app routes.
final class AppRouter {
  /// The list of app routes.
  static List<GetPage<dynamic>> get pageRoutes => [
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
        GetPage(
          name: PagesRoutes.dashboard.pattern,
          preventDuplicates: false,
          transition: Transition.noTransition,
          page: () => const MiddlewarePage(
            child: DashboardView(),
          ),
        ),
        GetPage(
          name: PagesRoutes.stores.pattern,
          transition: Transition.noTransition,
          page: () {
            return const MiddlewarePage(
              child: StoresView(),
            );
          },
        ),
      ];

  /// Gets the current route name.
  static String get getCurrentLocation {
    return Get.currentRoute;
  }

  /// Checks if there are routes to pop.
  static bool get canPop {
    return Get.key.currentState?.canPop() ?? false;
  }

  /// Navigates to nex page.
  static void push(
    String uri, {
    Object? extra,
    Map<String, String>? parameters,
  }) {
    Get.toNamed(
      uri,
      arguments: extra,
      preventDuplicates: false,
      parameters: parameters,
    );
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

  /// Pops the current route.
  static void onPop() {
    Get.back();
  }
}
