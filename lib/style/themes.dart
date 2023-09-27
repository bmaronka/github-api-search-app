import 'package:flutter/material.dart';
import 'package:github_search_app/style/colors.dart';

enum ThemeType {
  light,
  dark,
}

class AppThemeModel with ChangeNotifier {
  ThemeType _currentTheme = ThemeType.light;

  ThemeType get currentTheme => _currentTheme;

  List<ThemeExtension<dynamic>> _currentExtensions = [AppColorTheme.lightTheme];

  List<ThemeExtension<dynamic>> get currentExtensions => _currentExtensions;

  set setTheme(ThemeType themeType) {
    _currentTheme = themeType;
    switch (themeType) {
      case ThemeType.light:
        _currentExtensions = [AppColorTheme.lightTheme];
        break;
      case ThemeType.dark:
        _currentExtensions = [AppColorTheme.darkTheme];
        break;

      default:
        _currentExtensions = [AppColorTheme.lightTheme];
    }
    notifyListeners();
  }
}
