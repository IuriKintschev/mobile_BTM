import 'package:flutter/material.dart';
import 'package:get/get.dart';

String themeCondition({@required isDark, @required isLight}) {
  if (Get.isDarkMode) {
    return isDark;
  } else {
    return isLight;
  }
}
