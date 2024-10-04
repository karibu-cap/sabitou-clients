import 'package:flutter/material.dart';

/// The preferences keys.
final class PreferencesKey {
  /// Whether the user has opened the app for the first time.
  static const String isFirstOpenTime = 'isFirstOpenTime';

  /// Whether the app is in dark mode.
  static const String isDartMode = 'isDarkMode';

  /// The language of the app.
  static const String language = 'language';
}

/// Items of the navigation bar. Has their Icon and the associated lable, and the index.
enum NavBarItem {
  /// Dashboard item.
  dashBaord(Icons.dashboard_outlined, 'Dashboard', 0),

  /// Inventory item.
  inventory(Icons.inventory_outlined, 'Inventory', 1),

  /// Store Item.
  store(Icons.store_outlined, 'Stores', 2),

  /// Shopping Bag item.
  shoppingBag(Icons.shopping_bag_outlined, 'Sales Orders', 3),

  /// Local shipping item.
  localShipping(Icons.local_shipping_outlined, 'Suppliers', 4),

  /// Insert chart item.
  insertChart(Icons.insert_chart_outlined, 'Reports', 5),

  /// Settings item.
  settings(Icons.settings_outlined, 'Settings', 6),

  /// Logout item.
  logout(Icons.logout_outlined, 'Log Out', 7),

  /// Person item.
  person(Icons.person_outline, 'Users', 8),

  /// Admin Panel settings item.
  adminPanelSettings(Icons.admin_panel_settings_outlined, 'Admin', 9);

  /// The icon of the item.
  final IconData icon;

  /// The lable of the item.
  final String lable;

  /// A number to recognise the item by.
  final int indx;

  const NavBarItem(this.icon, this.lable, this.indx);
}
