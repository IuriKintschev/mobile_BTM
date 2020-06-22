import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_BTM/app/core/constants/const_routes.dart';
import 'package:mobile_BTM/app/src/app_controller.dart';
import 'package:mobile_BTM/app/src/app_widget.dart';

import 'modules/splash/splash_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => AppController(),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router(
          ConstRoutes.splash,
          child: (_, args) => SplashPage(),
          transition: TransitionType.noTransition,
        ),
      ];
}
