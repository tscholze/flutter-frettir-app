import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// App's localizations.
class FrettirLocalizations {
  final Locale locale;
  FrettirLocalizations(this.locale);

  static FrettirLocalizations of(BuildContext context) {
    return Localizations.of<FrettirLocalizations>(context, FrettirLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Frettir',
      'overview_page.fab.tooltip': 'Add a new blog',
    },
    'de': {
      'title': 'Frettir',
      'overview_page.fab.tooltip': 'Füge einen neuen Blog hinzu'
    },
  };

  /// Gets the related value of the underlying localization key.
  /// If no value found, the key will be returned.
  String get(String key) {
    return _localizedValues[locale.languageCode][key] ?? key;
  }
}

/// App's localizations delegate
class FrettirLocalizationsDelegate extends LocalizationsDelegate<FrettirLocalizations> {
  const FrettirLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'de'].contains(locale.languageCode);

  @override
  Future<FrettirLocalizations> load(Locale locale) {
    return SynchronousFuture<FrettirLocalizations>(FrettirLocalizations(locale));
  }

  @override
  bool shouldReload(FrettirLocalizationsDelegate old) => false;
}