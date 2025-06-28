import 'package:flutter/material.dart';
import 'package:getbud/constants/color_constats.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorConstants.purple,
      secondaryHeaderColor: ColorConstants.orange,
      scaffoldBackgroundColor: ColorConstants.white,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorConstants.purple,
        foregroundColor: ColorConstants.white,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: ColorConstants.violet,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(color: ColorConstants.black, fontSize: 16),
        titleSmall: TextStyle(color: ColorConstants.black, fontSize: 14),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: ColorConstants.orange,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: ColorScheme.light(
        primary: ColorConstants.purple,
        secondary: ColorConstants.orange,
        tertiary: ColorConstants.yellow,
        surfaceBright: ColorConstants.white,
        surface: ColorConstants.purple,
        error: ColorConstants.red,
        onPrimary: ColorConstants.white,
        onSecondary: ColorConstants.white,
        onSurface: ColorConstants.white,
        onError: ColorConstants.white,
      ),
    );
  }
}
