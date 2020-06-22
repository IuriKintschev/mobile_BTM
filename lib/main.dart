import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_BTM/app/src/app_module.dart';

void main() {
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
      ],
      path: 'lang',
      child: ModularApp(
        module: AppModule(),
      ),
    ),
  );
}
