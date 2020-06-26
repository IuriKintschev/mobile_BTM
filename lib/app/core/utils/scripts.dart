import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/constants/const_colors.dart';
import 'package:easy_localization/easy_localization.dart';

String themeCondition({@required isDark, @required isLight}) {
  if (Get.isDarkMode) {
    return isDark;
  } else {
    return isLight;
  }
}

void errorLog({@required String message}) => Get.snackbar(
      'logs.error'.tr(),
      message,
      backgroundColor: ConstColors.danger,
      snackPosition: SnackPosition.BOTTOM,
    );

void successLog({String message}) => Get.snackbar(
      'logs.success'.tr(),
      message,
      backgroundColor: ConstColors.success,
      snackPosition: SnackPosition.BOTTOM,
    );
