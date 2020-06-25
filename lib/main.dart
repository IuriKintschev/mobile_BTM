import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app/app_widget.dart';

void main() {
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
      ],
      path: 'lang',
      child: AppWidget(),
    ),
  );
}
