import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'navigation_item.dart';

/// Builds the admin navigation item and the items below it.
class AdminSectionNavigationItem extends StatefulWidget {
  /// The call back function which is used by the items under the Admin item.
  final void Function() onItemTapped;

  /// Indicates wether the side bar is collapsed or not. Used here as the admin section is hidden when collapsed.
  final bool isCollapsed;

  /// The index of the currently selected navigation item.
  final int selectedIndex;

  /// Creates the admin navigation item and all the items under it.
  const AdminSectionNavigationItem({
    super.key,
    required this.onItemTapped,
    required this.isCollapsed,
    required this.selectedIndex,
  });

  @override
  State<AdminSectionNavigationItem> createState() =>
      _AdminSectionNavigationItemState();
}

class _AdminSectionNavigationItemState
    extends State<AdminSectionNavigationItem> {
  /// Determines if the admin should be expanded or not to show the items below it.
  bool isAdminExpanded = false;

  /// The Admin item for the navigation bar.
  NavBarItem navBarItem = NavBarItem.adminPanelSettings;

  void _toggleBoolean() {
    setState(() {
      isAdminExpanded = !isAdminExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: _toggleBoolean,
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
                      color: Colors.black54,
                    ),
                    const SizedBox(
                      width: 10,
                    ), // Separation between the icon and label.
                    Text(
                      navBarItem.lable,
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    isAdminExpanded
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isAdminExpanded && !widget.isCollapsed)
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                NavItem(
                  navBarItem: NavBarItem.person,
                  onTap: () => widget.onItemTapped(),
                  isCollapsed: widget.isCollapsed,
                  selectedIndex: widget.selectedIndex,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
