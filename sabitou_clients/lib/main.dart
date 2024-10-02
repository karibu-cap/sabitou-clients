import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'routes/app_routes.dart';
import 'services/internationalization/app_translations.dart';
import 'services/internationalization/internationalization.dart';
import 'services/storage/app_storate.dart';
import 'themes/app_themes.dart';
import 'utils/constants.dart';

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
      supportedLocales: AppInternationalizationService.supportedLocales,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en'),
      getPages: AppRouter.pageRoutes,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: ThemeService.darkTheme,
      theme: ThemeService.lightTheme,
      themeMode: ThemeService.to.themeMode,
    );
  }
}

Future<void> _initServices() async {
  setUrlStrategy(PathUrlStrategy());

  /// Initialize the get storage service.
  await GetStorage.init();
  final appStorage = AppStorageService(AppStorageType.getStorage);
  Get.put<AppStorageService>(
    appStorage,
    permanent: true,
  );

  // Initialize the services and repositories.
  final languageCode =
      AppStorageService.to.read<String>(PreferencesKey.language);

  final AppInternationalizationService appInternationalization =
      AppInternationalizationService(
    languageCode != null
        ? Locale(languageCode)
        : Get.deviceLocale ?? const Locale('en'),
    appStorage,
  );

  // Register internationalization services.
  Get.put<AppInternationalizationService>(
    appInternationalization,
    permanent: true,
  );

  /// Register theme service.
  final themeService = ThemeService(appStorage);
  Get.put<ThemeService>(themeService, permanent: true);
  await themeService.init();
}
