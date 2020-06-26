import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mobile_BTM/app/core/controllers/login_controller.dart';
import 'package:mobile_BTM/app/core/utils/scripts.dart' as scripts;
import 'package:mobile_BTM/app/src/components/custom_icon_button.dart';
import 'package:mobile_BTM/app/src/components/custom_text_field.dart';

class LoginWidget extends StatelessWidget {
  final _loginControl = LoginController.to;

  /*
   * Label Widget
   */
  Widget _label({@required String label}) => Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.only(left: 10),
        child: Text(
          label,
          style: Get.theme.textTheme.bodyText1,
        ).tr(),
      );

  /*
   * return icons visibility 
   */
  IconData _verifiIconVisibility() {
    if (!_loginControl.passwordVisible.value) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              top: -Get.height * .08,
              right: Get.width * 0.11,
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
                          onChanged: _loginControl.setEmail,
                        ),
                        _label(
                          label: 'login.password',
                        ),
                        Obx(
                          () => CustomTextField(
                            hint: '123456',
                            enabled: true,
                            obscure: !_loginControl.passwordVisible.value,
                            prefix: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            suffix: CustomIconButton(
                              radius: 32,
                              iconData: _verifiIconVisibility(),
                              onTap: _loginControl.togglePasswordVisibility,
                            ),
                            onChanged: _loginControl.setPassword,
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
