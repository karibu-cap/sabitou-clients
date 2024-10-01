import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:sabitou_clients/services/internationalization/internationalization.dart';

void main() {
  group('AppInternationalization', () {
    late AppInternationalization appInt;

    setUp(() {
      appInt = AppInternationalization(const Locale('en'));
      Get.put<AppInternationalization>(appInt);
    });

    tearDown(Get.reset);

    test('Initial locale should be English', () {
      expect(appInt.locale.languageCode, equals('en'));
    });

    test('Translate should return correct translation for existing key', () {
      expect(appInt.translate('cancel'), equals('Cancel'));
      expect(
        AppInternationalization(const Locale('fr')).translate('cancel'),
        equals('Annuler'),
      );
    });

    test(
        'Translate should return key for _placeholder_ for non existing translation',
        () {
      expect(appInt.translate('non_existent_key'), equals('_placeholder_'));
    });

    test('Translate should handle parameter substitution', () {
      AppInternationalization.translations['greeting'] = {
        'en': 'Hello, @name!',
        'fr': 'Bonjour, @name!',
      };

      expect(
        appInt.translate('greeting', args: {'name': 'Alice'}),
        equals('Hello, Alice!'),
      );
      expect(
        AppInternationalization(const Locale('fr'))
            .translate('greeting', args: {'name': 'Alice'}),
        equals('Bonjour, Alice!'),
      );
    });

    test('Supported locales should contain English and French', () {
      expect(
        AppInternationalization.supportedLocales,
        contains(const Locale('en')),
      );
      expect(
        AppInternationalization.supportedLocales,
        contains(const Locale('fr')),
      );
    });
  });
}
