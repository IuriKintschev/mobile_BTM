import 'package:get/get.dart';

class AuthControloler extends RxController {
  static AuthControloler get to => Get.find();

  /*
   * Observables 
   */
  var _loggedIn = false.obs;

  /*
  * Setters
  */
  void setLoggedIn(bool setter) => _loggedIn.value = setter;

  /*
   * Getters 
   */
  bool get loggedIn => _loggedIn.value;
}
