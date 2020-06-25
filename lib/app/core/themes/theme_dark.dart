import 'package:flutter/material.dart';
import 'package:mobile_BTM/app/core/constants/const_colors.dart';

class AppThemeDark {
  static ThemeData getTheme() {
    return ThemeData(
      primaryColor: ConstColors.darkPrimary,
      accentColor: ConstColors.purpleAccent,
      splashColor: ConstColors.darkBase,
      scaffoldBackgroundColor: ConstColors.darkBase,
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
      ),
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Colors.white,
        ),
        subtitle1: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.white38,
        ),
      ),
    );
  }
}
