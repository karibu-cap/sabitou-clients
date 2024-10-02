import 'package:flutter/material.dart';
import 'package:sabitou_clients/utils/constants.dart';


class SabitouNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const SabitouNavigationBar(
      {super.key, required this.selectedIndex, required this.onItemSelected});

  @override
  State<SabitouNavigationBar> createState() => _SabitouNavigationBarState();
}

class _SabitouNavigationBarState extends State<SabitouNavigationBar> {
  bool isCollapsed = true;
  bool isAdminExpanded = false;

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
                  onPressed: () {
                    setState(() {
                      isCollapsed = !isCollapsed;
                    });
                  },
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
                    _buildNavItem(NavBarItem.dashBaord, 0),
                    _buildNavItem(NavBarItem.inventory, 1),
                    _buildNavItem(NavBarItem.store, 2),
                    _buildNavItem(NavBarItem.shoppingBag, 3),
                    _buildNavItem(NavBarItem.localShipping, 4),
                    _buildNavItem(NavBarItem.insertChart, 5),
                    if (!isCollapsed) _buildAdminSection(),
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
                    _buildNavItem(NavBarItem.settings, 6),
                    _buildNavItem(NavBarItem.logout, 7),
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

  Widget _buildNavItem(NavBarItem navBarItem, int index) {
    bool isSelected = widget.selectedIndex == index;
    double phorizontal = isCollapsed ? 25 : 40;
    double mhorizontal = isCollapsed ? 0 : 15;

    return InkWell(
      onTap: () {
        widget.onItemSelected(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: phorizontal),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: mhorizontal),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF1570EF) : Colors.transparent,
          shape: isCollapsed ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isCollapsed ? null : BorderRadius.circular(10),
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
                  width: 10), // put some space between the lable and icon
            if (!isCollapsed)
              Text(
                navBarItem.lable,
                style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black54,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdminSection() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isAdminExpanded = !isAdminExpanded;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    Icon(NavBarItem.adminPanelSettings.icon,
                        color: Colors.black54),
                    const SizedBox(width: 10), // sepration between the icon and the lable
                    Text(
                      NavBarItem.adminPanelSettings.lable,
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
                )
              ],
            ),
          ),
        ),
        if (isAdminExpanded && !isCollapsed)
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                _buildNavItem(NavBarItem.person, 8),
              ],
            ),
          ),
      ],
    );
  }
}


