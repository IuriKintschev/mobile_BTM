import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/controllers/register_controller.dart';

class RegisterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
