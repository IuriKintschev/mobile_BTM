import 'package:flutter/material.dart';
import 'package:mobile_BTM/app/core/themes/theme_dark.dart';
import 'package:mobile_BTM/app/core/themes/theme_light.dart';
import 'package:mobile_BTM/app/src/modules/auth/auth_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Behind The masks',
      debugShowCheckedModeBanner: false,
      theme: AppThemeLight.getTheme(),
      darkTheme: AppThemeDark.getTheme(),
      // translate setup
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      //translate setup end
      home: AuthWidget(),
    );
  }
}
