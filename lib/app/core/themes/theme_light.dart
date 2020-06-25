import 'package:flutter/material.dart';
import 'package:mobile_BTM/app/core/constants/const_colors.dart';

class AppThemeLight {
  static ThemeData getTheme() {
    return ThemeData(
      primaryColor: ConstColors.lightPrimary,
      splashColor: ConstColors.lightBase,
      accentColor: ConstColors.purpleAccent,
      scaffoldBackgroundColor: ConstColors.lightBase,
      appBarTheme: AppBarTheme(
        brightness: Brightness.light,
      ),
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Colors.black,
        ),
        subtitle1: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.grey[350],
        ),
      ),
    );
  }
}
