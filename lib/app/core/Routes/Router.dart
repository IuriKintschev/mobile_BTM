import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/bindings/login_bindings.dart';
import 'package:mobile_BTM/app/core/bindings/splash_bindings.dart';
import 'package:mobile_BTM/app/src/views/auth/login_widget.dart';
import 'package:mobile_BTM/app/src/views/home/home_widget.dart';
import 'package:mobile_BTM/app/src/views/splash/splash_page.dart';

class Router {
  static List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginWidget(),
      binding: LoginBindings(),
      transitionDuration: Duration(milliseconds: 800),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/home',
      page: () => HomeWidget(),
      transition: Transition.fade,
    )
  ];
}
