import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/bindings/login_bindings.dart';
import 'package:mobile_BTM/app/src/views/auth/login_widget.dart';

class Router {
  static List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => LoginWidget(),
      binding: LoginBindings(),
    ),
  ];
}
