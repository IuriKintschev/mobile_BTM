import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/controllers/auth_controller.dart';
import 'package:mobile_BTM/app/core/utils/scripts.dart' as scripts;
import 'package:easy_localization/easy_localization.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class LoginController extends RxController {
  // auth controller
  final _authController = AuthControloler.to;

  //controller textfields
  final TextEditingController txEmail = TextEditingController();
  final TextEditingController txPass = TextEditingController();

  static LoginController get to => Get.find();

  /*
   * Observers 
   */
  var email = "".obs;
  var password = "".obs;

  var passwordVisible = false.obs;

  var loading = false.obs;

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

  void loginPressed() =>
      (isEmailValid && isPasswordValid) ? login() : errorInputsLog();

  CustomAnimationControl get controlAni => loading.value
      ? CustomAnimationControl.PLAY
      : CustomAnimationControl.PLAY_REVERSE;

  /*
  * Actions
  */
  void togglePasswordVisibility() =>
      passwordVisible.value = !passwordVisible.value;

  Future<void> login() async {
    loading.value = true;

    await Future.delayed(3.seconds);

    loading.value = false;
    _authController.setLoggedIn(true);

    email.value = "";
    password.value = "";
    txEmail.text = '';
    txPass.text = '';
  }

  void errorInputsLog() => scripts.errorLog(
        message: 'logs.errorInputs'.tr(),
      );
}
