import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_BTM/app/core/themes/theme_dark.dart';
import 'package:mobile_BTM/app/core/themes/theme_light.dart';

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
      // modular setup
      initialRoute: '/',
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
      // modular setup end
    );
  }
}
