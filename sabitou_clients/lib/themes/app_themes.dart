import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// The theme service.
class ThemeService extends GetxService {
  final _box = GetStorage();
  final _key = 'isDarkMode';
  final _isDarkMode = false.obs;

  static final ShadThemeData _lightTheme = ShadThemeData(
    brightness: Brightness.light,
    colorScheme: const ShadSlateColorScheme.light(),
  );

  static final ShadThemeData _darkTheme = ShadThemeData(
    brightness: Brightness.dark,
    colorScheme: const ShadSlateColorScheme.dark(),
  );

  /// Whether the app is in dark mode.
  bool get isDarkMode => _isDarkMode.value;

  /// Direct access to the theme service.
  static ThemeService get to => Get.find();

  /// The light theme.
  static ShadThemeData get lightTheme => _lightTheme;

  /// The dark theme.
  static ShadThemeData get darkTheme => _darkTheme;

  /// Gets the current theme mode.
  ThemeMode get themeMode =>
      _isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  Future<void> _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  /// Initializes the theme service.
  Future<ThemeService> init() async {
    _isDarkMode.value = _box.read(_key) ?? false;

    await 1.delay();
    return this;
  }

  /// Switches the theme mode between light and dark, and saves it to the storage.
  void switchTheme() {
    _isDarkMode.value = !_isDarkMode.value;
    Get.changeThemeMode(_isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
    _saveThemeToBox(_isDarkMode.value);
  }
}
