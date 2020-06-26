import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/controllers/splash_controller.dart';
import 'package:mobile_BTM/app/core/utils/scripts.dart' as scripts;

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<SplashControloler>(
          init: SplashControloler(),
          builder: (_) {
            return Center(
              child: Hero(
                tag: 'Unicorn',
                child: SvgPicture.asset(
                  scripts.themeCondition(
                    isDark: 'assets/D-unicorn.svg',
                    isLight: 'assets/L-unicorn.svg',
                  ),
                  height: Get.height * .5,
                ),
              ),
            );
          }),
    );
  }
}
