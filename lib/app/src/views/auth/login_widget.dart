import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mobile_BTM/app/core/utils/scripts.dart' as scripts;

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              top: -Get.height * .08,
              right: Get.width * 0.11,
              child: SvgPicture.asset(
                scripts.themeCondition(
                  isDark: 'assets/D-unicorn.svg',
                  isLight: 'assets/L-unicorn.svg',
                ),
                height: Get.height * .5,
              ),
            ),
            Center(
              child: Container(
                width: Get.width * 0.92,
                height: Get.height * 0.28,
                decoration: BoxDecoration(
                  color: Get.theme.primaryColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 7,
                      spreadRadius: 5,
                      offset: Offset(3, 5),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: Get.height * .04),
                width: Get.width * 0.92,
                height: 60,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'login.login',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ).tr(),
                ),
              ),
            ),
          ],
        ),
      );
}
