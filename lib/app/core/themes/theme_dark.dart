import 'package:flutter/material.dart';
import 'package:mobile_BTM/app/core/constants/const_colors.dart';

class AppThemeDark {
  static ThemeData getTheme() {
    return ThemeData(
      primaryColor: ConstColors.greenPrimary,
      accentColor: ConstColors.purpleAccent,
      appBarTheme: AppBarTheme(
        color: ConstColors.darkBase,
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
