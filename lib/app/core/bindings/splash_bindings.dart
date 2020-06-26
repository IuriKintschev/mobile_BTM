import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/controllers/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashControloler>(() => SplashControloler());
  }
}
