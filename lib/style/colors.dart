import 'package:flutter/material.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  const AppColorTheme({
    required this.white,
    required this.black,
    required this.transparent,
    required this.primary,
    required this.gold,
    required this.red,
    required this.green,
    required this.violet,
  });

  final Color white;
  final Color black;
  final Color transparent;
  final Color primary;
  final Color gold;
  final Color red;
  final Color green;
  final Color violet;

  @override
  AppColorTheme copyWith({
    Color? white,
    Color? black,
    Color? transparent,
    Color? primary,
    Color? gold,
    Color? red,
    Color? green,
    Color? violet,
  }) =>
      AppColorTheme(
        white: white ?? this.white,
        black: black ?? this.black,
        transparent: transparent ?? this.transparent,
        primary: primary ?? this.primary,
        gold: gold ?? this.gold,
        red: red ?? this.red,
        green: green ?? this.green,
        violet: violet ?? this.violet,
      );

  @override
  AppColorTheme lerp(ThemeExtension<AppColorTheme>? other, double t) {
    if (other is! AppColorTheme) return this;

    return AppColorTheme(
      white: _getColorLerp(white, other.white, t),
      black: _getColorLerp(black, other.black, t),
      transparent: _getColorLerp(transparent, other.transparent, t),
      primary: _getColorLerp(primary, other.primary, t),
      gold: _getColorLerp(gold, other.gold, t),
      red: _getColorLerp(red, other.red, t),
      green: _getColorLerp(green, other.green, t),
      violet: _getColorLerp(violet, other.violet, t),
    );
  }

  Color _getColorLerp(Color actual, Color other, double t) => Color.lerp(actual, other, t) ?? other;

  static const lightTheme = AppColorTheme(
    white: AppStandardColors.white,
    black: AppStandardColors.black,
    transparent: AppStandardColors.transparent,
    primary: AppStandardColors.primary,
    gold: AppStandardColors.gold,
    red: AppStandardColors.red,
    green: AppStandardColors.green,
    violet: AppStandardColors.violet,
  );

  static const darkTheme = AppColorTheme(
    white: Color(0xFFF9F9F9),
    black: AppStandardColors.black,
    transparent: AppStandardColors.transparent,
    primary: Color(0xFF091E44),
    gold: Color(0x75FFD900),
    red: Color(0x71C62828),
    green: Color(0x743FB94F),
    violet: Color(0x735C468D),
  );
}

class AppStandardColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);
  static const Color primary = Color(0xFF00338B);
  static const Color gold = Color(0xFFFFD700);
  static const Color red = Color(0xFFC62828);
  static const Color green = Color(0xFF3FB950);
  static const Color violet = Color(0xFF5D468D);
}
