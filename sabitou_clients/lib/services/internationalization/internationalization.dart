import 'dart:ui';

import 'package:get/get.dart';

import '../../utils/constants.dart';
import '../storage/app_storate.dart';

/// Extension method for easy access to translations.
extension TranslationExtension on String {
  /// Get the translation for the given key.
  ///
  /// If [args] is specified, named string substitution is performed on the
  /// translation string. For example, if the translation string is "Hello, {name}!"
  /// and [args] is {"name": "John"}, the result will be "Hello, John!".
  String trs([Map<String, String>? args]) {
    return Get.find<AppInternationalizationService>()
        .translate(this, args: args);
  }
}

/// AppInternalization defines all the 'local' strings displayed to.
class AppInternationalizationService extends GetxService {
  final _key = PreferencesKey.language;
  final AppStorageService _box;
  final Rx<Locale> _locale;

  /// The translations map key.
  Map<String, Map<String, String>> translations = {
    'sabitu': {
      'en': 'Sabitu',
      'fr': 'Sabitou',
    },
    'cancel': {
      'en': 'Cancel',
      'fr': 'Annuler',
    },
    'stores': {
      'en': 'Stores',
      'fr': 'Magasins',
    },
    'dashboard': {
      'en': 'Dashboard',
      'fr': 'Tableau de bord',
    },
    'signOut': {
      'en': 'Sign out',
      'fr': 'Se deconnecter',
    },
    'setting': {
      'en': 'Setting',
      'fr': 'Paramètres',
    },
    'searchForProduct': {
      'en': 'Search for product',
      'fr': 'Rechercher un produit',
    },
  };

  /// Direct access to the internationalization service.
  static AppInternationalizationService get to => Get.find();

  /// Constructors for internationalization.
  AppInternationalizationService(Locale initialLocale, this._box)
      : _locale = Rx<Locale>(initialLocale);

  /// The current locale.
  Locale get locale => _locale.value;

  /// The supported locales.
  static List<Locale> get supportedLocales => [
        const Locale('en'),
        const Locale('fr'),
      ];

  /// Returns the localized value of searchForProduct.
  String get searchForProduct {
    return _stringOfLocalizedValue(
      'searchForProduct',
    );
  }

  /// Returns the localized value of setting.
  String get setting {
    return _stringOfLocalizedValue(
      'setting',
    );
  }

  /// Returns the localized value of signOut.
  String get signOut {
    return _stringOfLocalizedValue(
      'signOut',
    );
  }

  /// Returns the localized value of dashboard.
  String get dashboard {
    return _stringOfLocalizedValue(
      'dashboard',
    );
  }

  /// Returns the localized value of [stores].
  String get stores {
    return _stringOfLocalizedValue(
      'stores',
    );
  }

  /// Returns the localized value of sabitu.
  String get sabitu {
    return _stringOfLocalizedValue(
      'sabitu',
    );
  }

  /// Returns the localized value of cancel.
  String get cancel {
    return _stringOfLocalizedValue(
      'cancel',
    );
  }

  /// Changes the locale.
  void changeLocale([Locale? newLocale]) {
    final local = switch ((newLocale, _locale.value.languageCode)) {
      (final Locale newLocale, _) => newLocale,
      (null, 'en') => const Locale('fr'),
      (_, _) => const Locale('en'),
    };

    if (_locale.value == local) {
      return;
    }
    _locale.value = local;
    Get.updateLocale(local);
    _box.write(_key, local.languageCode);
  }

  /// Gets the translation for the given key.
  String translate(String key, {Map<String, String>? args}) {
    final value = translations[key];
    if (value == null) {
      return '_placeholder_';
    }
    final translation = value[locale.languageCode] ?? key;
    if (args != null) {
      return _replaceArgs(translation, args);
    }

    return translation;
  }

  String _replaceArgs(String translation, Map<String, String> args) {
    String result = translation;
    args.forEach((key, value) {
      result = result.replaceAll('@$key', value);
    });

    return result;
  }

  String _stringOfLocalizedValue(
    String value, [
    Map<String, String>? args,
  ]) {
    return value.trs(args);
  }
}
