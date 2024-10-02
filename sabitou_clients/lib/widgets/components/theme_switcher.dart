import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_themes.dart';

/// The theme switcher.
class CPThemeSwitcher extends StatelessWidget {
  /// Constructor for [ComponentThemeSwitcher].
  const CPThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: ThemeService.to.switchTheme,
        child: Container(
          width: 70,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: ThemeService.to.isDarkMode
                ? AppColors.grey900
                : AppColors.grey100,
          ),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            alignment: ThemeService.to.isDarkMode
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ThemeService.to.isDarkMode
                    ? AppColors.grey800
                    : AppColors.grey50,
              ),
              child: Icon(
                ThemeService.to.isDarkMode
                    ? Icons.nightlight_round
                    : Icons.wb_sunny,
                color: ThemeService.to.isDarkMode
                    ? AppColors.grey50
                    : AppColors.warning400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
