import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/controllers/auth_controller.dart';

class InitialBindins extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthControloler>(AuthControloler());
  }
}
