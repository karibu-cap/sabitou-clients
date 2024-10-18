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
    'account': {
      'en': 'Account',
      'fr': 'Compte',
    },
    'uploadNewPicture': {
      'en': 'Upload new picture',
      'fr': 'Télécharger une nouvelle image',
    },
    'deletePicture': {
      'en': 'Delete picture',
      'fr': 'Supprimer l\'image',
    },
    'firstName': {
      'en': 'First name',
      'fr': 'Prénom',
    },
    'lastName': {
      'en': 'Last name',
      'fr': 'Nom de famille',
    },
    'contactEmail': {
      'en': 'Contact email',
      'fr': 'Email de contact',
    },
    'manageYourAccountEmailAddress': {
      'en': 'Manage your account email address',
      'fr': 'Gérer l\'adresse email de votre compte',
    },
    'email': {
      'en': 'Email',
      'fr': 'Email',
    },
    'password': {
      'en': 'Password',
      'fr': 'Mot de passe',
    },
    'business': {
      'en': 'Business',
      'fr': 'Entreprise',
    },
    'manageYourBusiness': {
      'en': 'Manage your business',
      'fr': 'Gérer votre entreprise',
    },
    'store': {
      'en': 'Store',
      'fr': 'Magasin',
    },
    'manageTheStore': {
      'en': 'Manage the store',
      'fr': 'Gérer le magasin',
    },
    'changeTheBusiness': {
      'en': 'Change the business',
      'fr': 'Changer l\'entreprise',
    },
    'changeTheStore': {
      'en': 'Change the store',
      'fr': 'Changer le magasin',
    },
    'accountSecurity': {
      'en': 'Account security',
      'fr': 'Sécurité du compte',
    },
    'manageYourAccountSecurity': {
      'en': 'Manage your account security',
      'fr': 'Gérer la sécurité de votre compte',
    },
    'adminManager': {
      'en': 'Admin manager',
      'fr': 'Gestionnaire admin',
    },
    'inventoryManager': {
      'en': 'Inventory manager',
      'fr': 'Gestionnaire des stocks',
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

  /// Returns the localized value of account.
String get account {
  return _stringOfLocalizedValue(
    'account',
  );
}

/// Returns the localized value of uploadNewPicture.
String get uploadNewPicture {
  return _stringOfLocalizedValue(
    'uploadNewPicture',
  );
}

/// Returns the localized value of deletePicture.
String get deletePicture {
  return _stringOfLocalizedValue(
    'deletePicture',
  );
}

/// Returns the localized value of firstName.
String get firstName {
  return _stringOfLocalizedValue(
    'firstName',
  );
}

/// Returns the localized value of lastName.
String get lastName {
  return _stringOfLocalizedValue(
    'lastName',
  );
}

/// Returns the localized value of contactEmail.
String get contactEmail {
  return _stringOfLocalizedValue(
    'contactEmail',
  );
}

/// Returns the localized value of manageYourAccountEmailAddress.
String get manageYourAccountEmailAddress {
  return _stringOfLocalizedValue(
    'manageYourAccountEmailAddress',
  );
}

/// Returns the localized value of email.
String get email {
  return _stringOfLocalizedValue(
    'email',
  );
}

/// Returns the localized value of password.
String get password {
  return _stringOfLocalizedValue(
    'password',
  );
}

/// Returns the localized value of business.
String get business {
  return _stringOfLocalizedValue(
    'business',
  );
}

/// Returns the localized value of manageYourBusiness.
String get manageYourBusiness {
  return _stringOfLocalizedValue(
    'manageYourBusiness',
  );
}

/// Returns the localized value of store.
String get store {
  return _stringOfLocalizedValue(
    'store',
  );
}

/// Returns the localized value of manageTheStore.
String get manageTheStore {
  return _stringOfLocalizedValue(
    'manageTheStore',
  );
}

/// Returns the localized value of changeTheBusiness.
String get changeTheBusiness {
  return _stringOfLocalizedValue(
    'changeTheBusiness',
  );
}

/// Returns the localized value of changeTheStore.
String get changeTheStore {
  return _stringOfLocalizedValue(
    'changeTheStore',
  );
}

/// Returns the localized value of accountSecurity.
String get accountSecurity {
  return _stringOfLocalizedValue(
    'accountSecurity',
  );
}

/// Returns the localized value of manageYourAccountSecurity.
String get manageYourAccountSecurity {
  return _stringOfLocalizedValue(
    'manageYourAccountSecurity',
  );
}

/// Returns the localized value of adminManager.
String get adminManager {
  return _stringOfLocalizedValue(
    'adminManager',
  );
}

/// Returns the localized value of inventoryManager.
String get inventoryManager {
  return _stringOfLocalizedValue(
    'inventoryManager',
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
