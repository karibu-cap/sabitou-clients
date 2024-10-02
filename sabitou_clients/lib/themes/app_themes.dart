// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/storage/app_storate.dart';
import '../utils/constants.dart';
import 'app_colors.dart';

/// The theme service.
class ThemeService extends GetxService {
  final AppStorageService _box;
  final _key = PreferencesKey.isDartMode;
  final _isDarkMode = false.obs;

  static final FlexColorScheme _lightTheme = FlexColorScheme.light(
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 9,
    appBarOpacity: 0.95,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
      inputDecoratorRadius: 8.0,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      fabRadius: 8.0,
      elevatedButtonRadius: 8.0,
      outlinedButtonRadius: 8.0,
      textButtonRadius: 8.0,
      toggleButtonsRadius: 8.0,
      filledButtonRadius: 8.0,
      cardRadius: 8.0,
      popupMenuRadius: 8.0,
      timePickerDialogRadius: 8.0,
      dialogRadius: 8.0,
      datePickerDialogRadius: 8.0,
      blendTextTheme: true,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      alignedDropdown: true,
      useInputDecoratorThemeInDialogs: true,
      defaultRadius: 8.0,
      adaptiveElevationShadowsBack: FlexAdaptive.all(),
      elevatedButtonSchemeColor: SchemeColor.secondary,
      elevatedButtonSecondarySchemeColor: SchemeColor.primary,
      outlinedButtonOutlineSchemeColor: SchemeColor.primary,
      toggleButtonsBorderSchemeColor: SchemeColor.primary,
      segmentedButtonSchemeColor: SchemeColor.primary,
      segmentedButtonBorderSchemeColor: SchemeColor.primary,
      unselectedToggleIsColored: true,
      sliderValueTinted: true,
      inputDecoratorSchemeColor: SchemeColor.primary,
      inputDecoratorBackgroundAlpha: 31,
      inputDecoratorUnfocusedHasBorder: false,
      inputDecoratorFocusedBorderWidth: 1.0,
      inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
      fabUseShape: true,
      fabAlwaysCircular: true,
      fabSchemeColor: SchemeColor.tertiary,
      popupMenuElevation: 3.0,
      drawerIndicatorRadius: 12.0,
      drawerIndicatorSchemeColor: SchemeColor.primary,
      bottomNavigationBarMutedUnselectedLabel: false,
      bottomNavigationBarMutedUnselectedIcon: false,
      menuRadius: 8.0,
      menuElevation: 3.0,
      menuBarRadius: 0.0,
      menuBarElevation: 2.0,
      menuBarShadowColor: AppColors.grey900,
      navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
      navigationBarMutedUnselectedLabel: false,
      navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationBarMutedUnselectedIcon: false,
      navigationBarIndicatorSchemeColor: SchemeColor.primary,
      navigationBarIndicatorOpacity: 1.00,
      navigationBarIndicatorRadius: 12.0,
      navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
      navigationRailMutedUnselectedLabel: false,
      navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationRailMutedUnselectedIcon: false,
      navigationRailIndicatorSchemeColor: SchemeColor.primary,
      navigationRailIndicatorOpacity: 1.00,
      navigationRailIndicatorRadius: 12.0,
      navigationRailBackgroundSchemeColor: SchemeColor.surface,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    fontFamily: 'Roboto',
    background: AppColors.primary50,
    primary: AppColors.primary500,
    primaryContainer: AppColors.grey50,
    secondary: AppColors.grey50,
    secondaryContainer: AppColors.grey900,
    tertiary: AppColors.grey50,
    tertiaryContainer: AppColors.grey900,
    error: AppColors.error500,
    appBarBackground: AppColors.primary50,
    scaffoldBackground: AppColors.primary50,
    tones: FlexTones.jolly(Brightness.light),
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Roboto',
          displayColor: AppColors.grey900,
        ),
    primaryTextTheme: ThemeData.light().primaryTextTheme.apply(
          fontFamily: 'Roboto',
          displayColor: AppColors.grey900,
        ),
  );

  static final FlexColorScheme _darkTheme = FlexColorScheme.dark(
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.90,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
      inputDecoratorRadius: 8.0,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      fabRadius: 8.0,
      elevatedButtonRadius: 8.0,
      outlinedButtonRadius: 8.0,
      textButtonRadius: 8.0,
      toggleButtonsRadius: 8.0,
      cardRadius: 8.0,
      filledButtonRadius: 8.0,
      popupMenuRadius: 8.0,
      timePickerDialogRadius: 8.0,
      dialogRadius: 8.0,
      datePickerDialogRadius: 8.0,
      blendTextTheme: true,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      alignedDropdown: true,
      useInputDecoratorThemeInDialogs: true,
      defaultRadius: 8.0,
      adaptiveElevationShadowsBack: FlexAdaptive.all(),
      elevatedButtonSchemeColor: SchemeColor.secondary,
      elevatedButtonSecondarySchemeColor: SchemeColor.primary,
      outlinedButtonOutlineSchemeColor: SchemeColor.primary,
      toggleButtonsBorderSchemeColor: SchemeColor.primary,
      segmentedButtonSchemeColor: SchemeColor.primary,
      segmentedButtonBorderSchemeColor: SchemeColor.primary,
      unselectedToggleIsColored: true,
      sliderValueTinted: true,
      inputDecoratorSchemeColor: SchemeColor.primary,
      inputDecoratorBackgroundAlpha: 31,
      inputDecoratorUnfocusedHasBorder: false,
      inputDecoratorFocusedBorderWidth: 1.0,
      inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
      fabUseShape: true,
      fabAlwaysCircular: true,
      fabSchemeColor: SchemeColor.tertiary,
      popupMenuElevation: 3.0,
      drawerIndicatorRadius: 12.0,
      drawerIndicatorSchemeColor: SchemeColor.primary,
      bottomNavigationBarMutedUnselectedLabel: false,
      bottomNavigationBarMutedUnselectedIcon: false,
      menuRadius: 8.0,
      menuElevation: 3.0,
      menuBarRadius: 0.0,
      menuBarElevation: 2.0,
      menuBarShadowColor: AppColors.grey900,
      navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
      navigationBarMutedUnselectedLabel: false,
      navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationBarMutedUnselectedIcon: false,
      navigationBarIndicatorSchemeColor: SchemeColor.primary,
      navigationBarIndicatorOpacity: 1.00,
      navigationBarIndicatorRadius: 12.0,
      navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
      navigationRailMutedUnselectedLabel: false,
      navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationRailMutedUnselectedIcon: false,
      navigationRailIndicatorSchemeColor: SchemeColor.primary,
      navigationRailIndicatorOpacity: 1.00,
      navigationRailIndicatorRadius: 12.0,
      navigationRailBackgroundSchemeColor: SchemeColor.surface,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    background: AppColors.primary900,
    primary: AppColors.primary400,
    primaryContainer: AppColors.grey900,
    secondary: AppColors.grey800,
    secondaryContainer: AppColors.grey50,
    tertiary: AppColors.grey900,
    tertiaryContainer: AppColors.grey50,
    error: AppColors.error500,
    fontFamily: 'Roboto',
    appBarBackground: AppColors.primary900,
    scaffoldBackground: AppColors.primary900,
    tones: FlexTones.jolly(Brightness.light),
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'Roboto',
          displayColor: AppColors.grey100,
        ),
    primaryTextTheme: ThemeData.dark().primaryTextTheme.apply(
          fontFamily: 'Roboto',
          displayColor: AppColors.grey100,
        ),
  );

  /// Whether the app is in dark mode.
  bool get isDarkMode => _isDarkMode.value;

  /// Direct access to the theme service.
  static ThemeService get to => Get.find();

  /// The light theme.
  static ThemeData get lightTheme => _lightTheme.toTheme;

  /// The dark theme.
  static ThemeData get darkTheme => _darkTheme.toTheme;

  /// Gets the current theme mode.
  ThemeMode get themeMode =>
      _isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  /// Constructor of new theme service.
  ThemeService(
    this._box,
  );

  Future<void> _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  /// Initializes the theme service.
  Future<ThemeService> init() async {
    _isDarkMode.value = _box.read(_key) ?? false;
    return this;
  }

  /// Switches the theme mode between light and dark, and saves it to the storage.
  void switchTheme() {
    _isDarkMode.value = !_isDarkMode.value;
    Get.changeThemeMode(_isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
    _saveThemeToBox(_isDarkMode.value);
  }
}
