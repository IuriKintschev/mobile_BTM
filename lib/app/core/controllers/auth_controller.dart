import 'package:get/get.dart';

class AuthControloler extends RxController {
  static AuthControloler get to => Get.find();

  var count = 0.obs;

  increment() => count.value++;
}
