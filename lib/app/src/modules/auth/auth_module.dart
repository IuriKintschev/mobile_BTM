import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_BTM/app/core/constants/const_routes.dart';

import 'auth_controller.dart';
import 'auth_widget.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => AuthController(),
        ),
      ];

  @override
  List<Router> get routers => [
        Router(
          ConstRoutes.login,
          child: (_, args) => AuthWidget(),
          transition: TransitionType.noTransition,
        )
      ];
}
