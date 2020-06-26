import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/Routes/Router.dart';
import 'package:mobile_BTM/app/core/Routes/middleware_router.dart';
import 'package:mobile_BTM/app/core/bindings/initial_bindings.dart';
import 'package:mobile_BTM/app/core/themes/theme_light.dart';
import 'package:easy_localization/easy_localization.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Behind The masks',
        debugShowCheckedModeBanner: false,
        theme: AppThemeLight.getTheme(),
        // translate setup
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        //translate setup end
        // Get setup
        initialBinding: InitialBindins(),
        initialRoute: '/',
        getPages: Router.routes,
        defaultTransition: Transition.cupertino,
        navigatorObservers: [
          GetObserver(MiddleWareRouter.observer),
        ],
        // Get setup end
      );
}
