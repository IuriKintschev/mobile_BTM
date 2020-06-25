import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mobile_BTM/app/core/utils/scripts.dart' as scripts;
import 'package:mobile_BTM/app/src/components/custom_icon_button.dart';
import 'package:mobile_BTM/app/src/components/custom_text_field.dart';

class LoginWidget extends StatelessWidget {
  /*
   * Labrl Widget
   */
  Widget _label({@required String label}) => Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.only(left: 10),
        child: Text(
          label,
          style: Get.theme.textTheme.bodyText1,
        ).tr(),
      );

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
                height: Get.height * 0.26,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _label(
                          label: 'login.email',
                        ),
                        CustomTextField(
                          enabled: true,
                          hint: 'email@io.com',
                          textInputType: TextInputType.emailAddress,
                          prefix: Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                        ),
                        _label(
                          label: 'login.password',
                        ),
                        CustomTextField(
                          hint: '123456',
                          enabled: true,
                          prefix: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          suffix: CustomIconButton(
                            radius: 32,
                            iconData: Icons.visibility,
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: Get.height * .05),
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
