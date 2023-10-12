import 'package:flutter/material.dart';
import 'package:github_search_app/generated/assets/assets.gen.dart';

const _polishLanguageCode = 'pl';
const _englishLanguageCode = 'en';

enum AppLocale {
  pl(_polishLanguageCode),
  en(_englishLanguageCode);

  const AppLocale(this.languageCode);

  final String languageCode;

  String get iconPath => switch (this) {
        AppLocale.pl => Assets.us.path,
        AppLocale.en => Assets.pl.path,
      };

  static AppLocale fromString(String? localeString) {
    switch (localeString) {
      case _polishLanguageCode:
        return AppLocale.pl;
      case _englishLanguageCode:
        return AppLocale.en;
      default:
        return AppLocale.en;
    }
  }
}

class LocaleModel with ChangeNotifier {
  AppLocale _currentLocale = AppLocale.pl;

  AppLocale get currentLocale => _currentLocale;

  set setLocale(AppLocale locale) {
    _currentLocale = locale;
    notifyListeners();
  }
}
