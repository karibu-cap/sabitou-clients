import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../services/internationalization/internationalization.dart';

/// A beautiful language selection component.
final class CPLanguageSelection extends StatelessWidget {
  /// Constructor for [CPLanguageSelection].
  const CPLanguageSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: PopupMenuButton<String>(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          onSelected: (value) =>
              AppInternationalizationService.to.changeLocale(Locale(value)),
          itemBuilder: (context) =>
              AppInternationalizationService.supportedLocales
                  .map(
                    (e) => PopupMenuItem<String>(
                      value: e.languageCode,
                      child: Text(e.languageCode),
                    ),
                  )
                  .toList(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppInternationalizationService.to.locale.languageCode,
                ),
                const SizedBox(width: 8),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
