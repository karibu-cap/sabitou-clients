import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sabitou_clients/themes/color_scheme.dart';

final class Themes {
  ThemeData darkTheme() => FlexThemeData.dark(
        useMaterial3: true,
        colors: _appFlexScheme.light,
        visualDensity: VisualDensity.standard,
        typography: Typography.material2021(
          platform: defaultTargetPlatform,
        ),
      );

  ThemeData lightTheme() => FlexThemeData.light(
        useMaterial3: true,
        colors: _appFlexScheme.dark,
        visualDensity: VisualDensity.standard,
        typography: Typography.material2021(
          platform: defaultTargetPlatform,
        ),
      );
}

FlexSchemeData _appFlexScheme = const FlexSchemeData(
  name: 'App Theme',
  description: 'App custom colors definition',
  light: FlexSchemeColor(
    primary: AppColors.borderColor,
    primaryContainer: AppColors.primaryCTAColor,
    secondary: AppColors.borderColor,
    secondaryContainer: AppColors.primaryCTAColor,
    tertiary: AppColors.borderColor,
    tertiaryContainer: AppColors.primaryCTAColor,
    error: AppColors.outOfStockColor,
  ),
  dark:FlexSchemeColor(
    primary: AppColors.borderColor,
    primaryContainer: AppColors.primaryCTAColor,
    secondary: AppColors.borderColor,
    secondaryContainer: AppColors.primaryCTAColor,
    tertiary: AppColors.borderColor,
    tertiaryContainer: AppColors.primaryCTAColor,
    error: AppColors.outOfStockColor,
  ),
);
