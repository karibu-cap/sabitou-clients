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

enum NavBarItem {
  dashBaord(Icons.dashboard_outlined, "Dashboard"),
  inventory(Icons.inventory_outlined, "Inventory"),
  store(Icons.store_outlined, "Stores"),
  shoppingBag(Icons.shopping_bag_outlined, "Sales Orders"),
  localShipping(Icons.local_shipping_outlined, "Suppliers"),
  insertChart(Icons.insert_chart_outlined, "Reports"),
  settings(Icons.settings_outlined, "Settings"),
  logout(Icons.logout_outlined, "Log Out"),
  person(Icons.person_outline, "Users"),
  adminPanelSettings(Icons.admin_panel_settings_outlined, "Admin");

  final IconData icon;
  final String lable;

  const NavBarItem(this.icon, this.lable);
}
