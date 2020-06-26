import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/controllers/auth_controller.dart';

class SplashControloler extends RxController {
  static SplashControloler get to => Get.find();

  @override
  void onReady() {
    _initState();
    super.onReady();
  }

  Future<void> _initState() async {
    await Future.delayed(
      Duration(seconds: 1),
    );
    if (AuthControloler.to.loggedIn && Get.routing.current == '/') {
      Get.offNamed('/home');
    } else if (!AuthControloler.to.loggedIn && Get.routing.current == '/') {
      Get.offNamed('/login');
    }
  }
}
