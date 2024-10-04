import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';
import 'admin_nav_item_controller.dart';
import 'navigation_item.dart';

/// Builds the admin navigation item and the items below it.
class AdminSectionNavigationItem extends StatelessWidget {
  /// The call back function which is used by the items under the Admin item.
  final void Function() onItemTapped;

  /// Wether the navigation bar is collapsed or not. Used here as the admin section is hidden when collapsed.
  final bool isCollapsed;

  /// The index of the currently selected navigation item.
  final int selectedIndex;

  /// Create and register an instance of AdminNavItemController with GetX's dependency injection.
  final AdminNavItemController controller = Get.put(AdminNavItemController());

  /// Creates the admin navigation item and all the items under it.
  AdminSectionNavigationItem({
    super.key,
    required this.onItemTapped,
    required this.isCollapsed,
    required this.selectedIndex,
  });

  /// Determines if the admin should be expanded or not to show the items below it.
  /// Bool isAdminExpanded = false.

  @override
  Widget build(BuildContext context) {
    /// The Admin item for the navigation bar.
    const NavBarItem navBarItem = NavBarItem.adminPanelSettings;

    return Column(
      children: [
        InkWell(
          onTap: controller.toggleAdminExpand,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    Icon(
                      navBarItem.icon,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      navBarItem.lable,
                      style: const TextStyle(),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Obx(
                    () => Icon(
                      controller.isAdminExpanded.value
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Obx(
          () => controller.isAdminExpanded.value && !isCollapsed
              ? Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      NavItem(
                        navBarItem: NavBarItem.person,
                        onTap: onItemTapped,
                        isCollapsed: isCollapsed,
                        selectedIndex: selectedIndex,
                      ),
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
