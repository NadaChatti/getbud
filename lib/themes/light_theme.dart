import 'package:flutter/material.dart';
import 'package:getbud/constants/color_constats.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorConstats.purple,
      secondaryHeaderColor: ColorConstats.orange,
      scaffoldBackgroundColor: ColorConstats.white,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorConstats.purple,
        foregroundColor: ColorConstats.white,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: ColorConstats.violet,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(color: ColorConstats.black, fontSize: 16),
        titleSmall: TextStyle(color: ColorConstats.black, fontSize: 14),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: ColorConstats.orange,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: ColorScheme.light(
        primary: ColorConstats.purple,
        secondary: ColorConstats.orange,
        tertiary: ColorConstats.yellow,
        surfaceBright: ColorConstats.white,
        surface: ColorConstats.purple,
        error: ColorConstats.red,
        onPrimary: ColorConstats.white,
        onSecondary: ColorConstats.white,
        onSurface: ColorConstats.white,
        onError: ColorConstats.white,
      ),
    );
  }
}
