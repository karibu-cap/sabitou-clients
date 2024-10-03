import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'services/internationalization/app_translations.dart';
import 'services/internationalization/internationalization.dart';

/// The logger configuration.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

/// The main application widget.
class MyApp extends StatelessWidget {
  /// The main application constructor.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      translations: AppTranslations(),
      supportedLocales: AppInternationalization.supportedLocales,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const Login(),
    );
  }
}

/// The application binding.
class AppBinding extends Bindings {
  @override
  void dependencies() {
    // Initialize the services and repositories.
    final AppInternationalization appInternationalization =
        AppInternationalization(Get.deviceLocale ?? const Locale('en'));

    // Register internationalization services.
    Get.put<AppInternationalization>(appInternationalization, permanent: true);
  }
}
