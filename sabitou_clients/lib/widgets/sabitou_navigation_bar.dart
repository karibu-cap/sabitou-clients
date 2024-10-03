import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'admin_section_navigation_item.dart';
import 'navigation_item.dart';

/// This builds the side navigation bar.
class SabitouNavigationBar extends StatefulWidget {
  /// Call back function for handling selection of an item on the navigation bar.
  final Function(int) onItemTapped;

  /// Sabitou Navigation bar.
  const SabitouNavigationBar({
    super.key,
    required this.onItemTapped,
  });

  @override
  State<SabitouNavigationBar> createState() => _SabitouNavigationBarState();
}

class _SabitouNavigationBarState extends State<SabitouNavigationBar> {
  /// Indicates whether the sidebar is collapsed.
  ///
  /// If true, the sidebar is in a collapsed state, displaying only icons.
  /// If false, the sidebar is expanded, showing both icons and labels.
  bool isCollapsed = true;
  bool isAdminExpanded = false;

  /// The index of the currently selected item. Used to know which item to highlight.
  int selectedIndex = NavBarItem.dashBaord.indx;

  void _toggleBoolean() {
    setState(() {
      isCollapsed = !isCollapsed;
    });
  }

  void _onNavItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemTapped(index);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: isCollapsed ? 70 : 230,
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                alignment: Alignment.centerLeft,
                height: isCollapsed ? 30 : 40,
                child: Image.asset(
                  isCollapsed
                      ? 'assets/logo/logo.png'
                      : 'assets/logo/logo_with_name.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 7),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                  icon: Icon(
                    isCollapsed
                        ? Icons.chevron_right_sharp
                        : Icons.chevron_left_outlined,
                    color: Colors.black54,
                  ),
                  onPressed: _toggleBoolean,
                ),
              ),
              Divider(
                color: Colors.grey[400],
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              const SizedBox(height: 20),
              Flexible(
                flex: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NavItem(
                      navBarItem: NavBarItem.dashBaord,
                      onTap: () => _onNavItemTapped(0),
                      isCollapsed: isCollapsed,
                      selectedIndex: selectedIndex,
                    ),
                    NavItem(
                      navBarItem: NavBarItem.inventory,
                      onTap: () => _onNavItemTapped(1),
                      isCollapsed: isCollapsed,
                      selectedIndex: selectedIndex,
                    ),
                    NavItem(
                      navBarItem: NavBarItem.store,
                      onTap: () => _onNavItemTapped(2),
                      isCollapsed: isCollapsed,
                      selectedIndex: selectedIndex,
                    ),
                    NavItem(
                      navBarItem: NavBarItem.shoppingBag,
                      onTap: () => _onNavItemTapped(3),
                      selectedIndex: selectedIndex,
                      isCollapsed: isCollapsed,
                    ),
                    NavItem(
                      navBarItem: NavBarItem.localShipping,
                      onTap: () => _onNavItemTapped(4),
                      selectedIndex: selectedIndex,
                      isCollapsed: isCollapsed,
                    ),
                    NavItem(
                      navBarItem: NavBarItem.insertChart,
                      onTap: () => _onNavItemTapped(5),
                      selectedIndex: selectedIndex,
                      isCollapsed: isCollapsed,
                    ),
                    if (!isCollapsed)
                      AdminSectionNavigationItem(
                        onItemTapped: () => _onNavItemTapped(8),
                        selectedIndex: selectedIndex,
                        isCollapsed: isCollapsed,
                      ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[400],
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NavItem(
                      navBarItem: NavBarItem.settings,
                      onTap: () => _onNavItemTapped(6),
                      selectedIndex: selectedIndex,
                      isCollapsed: isCollapsed,
                    ),
                    NavItem(
                      navBarItem: NavBarItem.logout,
                      onTap: () => _onNavItemTapped(7),
                      selectedIndex: selectedIndex,
                      isCollapsed: isCollapsed,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 1,
          color: Colors.grey[400],
          height: double.infinity,
          margin: const EdgeInsets.only(left: 10),
        ),
      ],
    );
  }
}
