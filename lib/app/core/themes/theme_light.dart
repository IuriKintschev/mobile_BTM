import 'package:flutter/material.dart';
import 'package:mobile_BTM/app/core/constants/const_colors.dart';

class AppThemeLight {
  static ThemeData getTheme() {
    return ThemeData(
      primaryColor: ConstColors.lightPrimary,
      splashColor: ConstColors.lightBase,
      accentColor: ConstColors.purpleAccent,
      // scafould
      scaffoldBackgroundColor: ConstColors.lightBase,
      // appbar
      appBarTheme: AppBarTheme(
        brightness: Brightness.light,
      ),
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      // texto
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
      // raised button
      buttonTheme: ButtonThemeData(
        buttonColor: ConstColors.purpleAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
