import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'services/internationalization/app_translations.dart';
import 'services/internationalization/internationalization.dart';
import 'themes/app_themes.dart';

/// The logger configuration.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initServices();
  runApp(const MyApp());
}

/// The main application widget.
class MyApp extends StatelessWidget {
  /// The main application constructor.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppTranslations(),
      supportedLocales: AppInternationalization.supportedLocales,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      themeMode: ThemeService.to.themeMode,
    );
  }
}

Future<void> _initServices() async {
  await GetStorage.init();

  // Initialize the services and repositories.
  final AppInternationalization appInternationalization =
      AppInternationalization(Get.deviceLocale ?? const Locale('en'));

  // Register internationalization services.
  Get.put<AppInternationalization>(appInternationalization, permanent: true);

  /// Register theme service.
  final themeService = ThemeService();
  Get.put<ThemeService>(themeService, permanent: true);
  await themeService.init();
}
