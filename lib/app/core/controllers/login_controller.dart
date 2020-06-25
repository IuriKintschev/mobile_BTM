import 'package:get/get.dart';

class LoginController extends RxController {
  static LoginController get to => Get.find();

  /*
   * Observers 
   */
  var email = "".obs;
  var password = "".obs;

  var passwordVisible = false.obs;

  var loading = false.obs;
  var loggedIn = false.obs;

  /*
   * Setters
   */
  void setEmail(String value) => email.value = value;

  void setPassword(String value) => password.value = value;

  /*
   * Getters 
   */
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
      .hasMatch(email.value);

  bool get isPasswordValid => password.value.length >= 6;

  Function get loginPressed =>
      (isEmailValid && isPasswordValid && !loading.value) ? login : null;

  /*
  * Actions
  */
  void togglePasswordVisibility() =>
      passwordVisible.value = !passwordVisible.value;

  Future<void> login() async {
    loading.value = true;

    await Future.delayed(Duration(seconds: 2));

    loading.value = false;
    loggedIn.value = true;

    email.value = "";
    password.value = "";
  }

  void logout() {
    loggedIn.value = false;
  }
}
