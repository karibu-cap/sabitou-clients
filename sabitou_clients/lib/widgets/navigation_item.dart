import 'package:flutter/material.dart';

import '../utils/constants.dart';

/// Builds a navigation bar item.
class NavItem extends StatelessWidget {
  /// The navigation bar item.
  final NavBarItem navBarItem;

  /// A call back function which handles item selection.
  final void Function() onTap;

  /// The index of the currently selected item. To know if an item should be highlighted on not.
  final int selectedIndex;

  /// Indicates if the navigation bar is collpsed or not.
  /// Will determine if only the items icon should be shown (when collapsed),
  ///  or the icon and the lable be showed (when expaned).
  final bool isCollapsed;

  /// Creates the navigation bar items.
  const NavItem({
    super.key,
    required this.navBarItem,
    required this.onTap,
    required this.isCollapsed,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    /// The horizontal padding of the container holding navigation items.
    /// This values specifically so the should be centralised.
    final double horizontalPadding = isCollapsed ? 25 : 40;

    /// The horizontal margin of the container holding navigation items.
    /// This values specifically so they should be centralised.
    final double horizontalMargin = isCollapsed ? 0 : 15;

    /// Indicates if an item is selected or not for item higlighting and updating the index.
    final bool isSelected = selectedIndex == navBarItem.indx;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsets.symmetric(vertical: 10, horizontal: horizontalPadding),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: horizontalMargin),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF1570EF) : Colors.transparent,
          shape: isCollapsed ? BoxShape.circle : BoxShape.rectangle,
          borderRadius:
              isCollapsed ? null : const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Icon(
              navBarItem.icon,
              color: isSelected ? Colors.white : Colors.black54,
              size: 20,
            ),
            if (!isCollapsed)
              const SizedBox(
                width: 10,
              ), // Put some space between the lable and icon.
            if (!isCollapsed)
              Text(
                navBarItem.lable,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black54,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
