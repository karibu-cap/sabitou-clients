import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

/// The theme service.
final class Themes {
  /// The light theme.
  static final lightTheme = FlexColorScheme.light(
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 9,
    appBarOpacity: 0.95,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
      inputDecoratorRadius: 12.0,
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
      navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
      navigationBarMutedUnselectedLabel: false,
      inputDecoratorSchemeColor: SchemeColor.secondary,
      navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationBarMutedUnselectedIcon: false,
      navigationBarIndicatorSchemeColor: SchemeColor.primary,
      navigationBarIndicatorOpacity: 1.0,
      navigationBarIndicatorRadius: 12.0,
      navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
      navigationRailMutedUnselectedLabel: false,
      navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationRailMutedUnselectedIcon: false,
      navigationRailIndicatorSchemeColor: SchemeColor.primary,
      navigationRailIndicatorOpacity: 1.0,
      navigationRailIndicatorRadius: 12.0,
      navigationRailBackgroundSchemeColor: SchemeColor.surface,
      inputDecoratorFillColor: AppColors.lightSecondary,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    fontFamily: 'Roboto',
    background: AppColors.lightBackground,
    primary: AppColors.lightPrimary,
    primaryContainer: AppColors.lightCard,
    secondary: AppColors.lightSecondary,
    secondaryContainer: AppColors.grey900,
    tertiary: AppColors.grey50,
    tertiaryContainer: AppColors.grey900,
    error: AppColors.lightDestructive,
    appBarBackground: AppColors.lightBackground,
    scaffoldBackground: AppColors.lightBackground,
    tones: FlexTones.jolly(Brightness.light),
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Roboto',
          displayColor: AppColors.grey900,
        ),
    primaryTextTheme: ThemeData.light().primaryTextTheme.apply(
          fontFamily: 'Roboto',
          displayColor: AppColors.grey900,
        ),
    surfaceTint: AppColors.grey100,
  );

  /// The dark theme.
  static final darkTheme = FlexColorScheme.dark(
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.9,
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
      inputDecoratorSchemeColor: SchemeColor.secondary,
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
      navigationBarIndicatorOpacity: 1.0,
      navigationBarIndicatorRadius: 12.0,
      navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
      navigationRailMutedUnselectedLabel: false,
      navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationRailMutedUnselectedIcon: false,
      navigationRailIndicatorSchemeColor: SchemeColor.primary,
      navigationRailIndicatorOpacity: 1.0,
      navigationRailIndicatorRadius: 12.0,
      navigationRailBackgroundSchemeColor: SchemeColor.surface,
      inputDecoratorFillColor: AppColors.darkSecondary,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    background: AppColors.darkBackground,
    primary: AppColors.darkPrimary,
    primaryContainer: AppColors.darkCard,
    secondary: AppColors.grey800,
    secondaryContainer: AppColors.grey50,
    tertiary: AppColors.grey900,
    tertiaryContainer: AppColors.grey50,
    error: AppColors.darkDestructive,
    fontFamily: 'Roboto',
    appBarBackground: AppColors.darkBackground,
    scaffoldBackground: AppColors.darkBackground,
    tones: FlexTones.jolly(Brightness.light),
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'Roboto',
          displayColor: AppColors.grey100,
        ),
    primaryTextTheme: ThemeData.dark().primaryTextTheme.apply(
          fontFamily: 'Roboto',
          displayColor: AppColors.grey100,
        ),
    surfaceTint: AppColors.grey800,
  );
}
