import 'package:flutter/material.dart';
import 'package:github_search_app/style/colors.dart';

extension ThemeProvider on BuildContext {
  AppColorTheme getColors() => Theme.of(this).extension<AppColorTheme>() ?? AppColorTheme.lightTheme;
}
