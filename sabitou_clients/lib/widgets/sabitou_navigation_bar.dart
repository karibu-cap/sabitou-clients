import 'package:flutter/material.dart';

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
          width: isCollapsed ? 70 : 250,
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                alignment: Alignment.centerLeft,
                height: isCollapsed ? 30 : 45,
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
                    isCollapsed ? Icons.arrow_forward : Icons.arrow_back,
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
                    _buildNavItem(Icons.dashboard_outlined, "Dashboard", 0),
                    _buildNavItem(Icons.inventory_outlined, "Inventory", 1),
                    _buildNavItem(Icons.store_outlined, "Stores", 2),
                    _buildNavItem(Icons.shopping_bag_outlined, "Sales Orders", 3),
                    _buildNavItem(Icons.local_shipping_outlined, "Suppliers", 4),
                    _buildNavItem(Icons.insert_chart_outlined, "Reports", 5),
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
              const Spacer(), // so the setting and the logout go at teh bottom
              _buildNavItem(Icons.settings_outlined, "Settings", 6),
              _buildNavItem(
                  Icons.logout_outlined, "Log Out", 7),
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

  Widget _buildNavItem(IconData icon, String label, int index) {
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
              icon,
              color: isSelected ? Colors.white : Colors.black54,
              size: 20,
            ),
            if (!isCollapsed)
              const SizedBox(
                  width: 10), // put some space between the lable and icon
            if (!isCollapsed)
              Text(
                label,
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
                const Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 50)),
                    Icon(Icons.admin_panel_settings_outlined,
                    color: Colors.black54),
                    SizedBox(width: 10),
                  Text(
                    "Admin",
                    style: TextStyle(
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
                _buildNavItem(
                    Icons.person_outline, "Users", 8),
              ],
            ),
          ),
      ],
    );
  }
}
