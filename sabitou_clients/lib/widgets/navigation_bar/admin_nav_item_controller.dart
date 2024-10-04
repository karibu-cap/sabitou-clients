import 'package:get/get.dart';

/// A controller class for managing the state of the admin navigation item.
///
/// This class extends `GetxController` from the GetX package, enabling
/// reactive state management for the admin navigation section of the app.
class AdminNavItemController extends GetxController {
  /// Observable variable that tracks whether the admin navigation section is expanded.
  RxBool isAdminExpanded = false.obs;

  /// Toggles the expansion state of the admin navigation section.
  ///
  /// This method flips the current value of [isAdminExpanded] from `true` to `false`
  /// or from `false` to `true`. It can be used to show or hide sub-navigation items
  /// under the admin navigation section.
  void toggleAdminExpand() {
    isAdminExpanded.value = !isAdminExpanded.value;
  }
}
