import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mobile_BTM/app/core/controllers/register_controller.dart';
import 'package:mobile_BTM/app/src/components/custom_icon_button.dart';
import 'package:mobile_BTM/app/src/components/custom_text_field.dart';
import 'package:shimmer/shimmer.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class RegisterWidget extends StatelessWidget {
  final _registerControl = RegisterController.to;

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
    if (!_registerControl.passwordVisible.value) {
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
              right: Get.width * .11,
              child: Hero(
                tag: 'Unicorn',
                child: SvgPicture.asset(
                  'assets/L-unicorn.svg',
                  height: Get.height * .5,
                ),
              ),
            ),
            Center(
              child: PlayAnimation(
                tween: (0.0).tweenTo(1.0),
                delay: 800.milliseconds,
                duration: 500.milliseconds,
                builder: (context, child, value) => Opacity(
                  opacity: value,
                  child: Container(
                    width: Get.width * .92,
                    height: Get.height * .40,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _label(
                              label: 'login.name',
                            ),
                            Obx(
                              () => CustomTextField(
                                controller: _registerControl.txName,
                                enabled: true,
                                hint: 'Iuri',
                                textInputType: TextInputType.text,
                                prefix: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                onChanged: _registerControl.setName,
                              ),
                            ),
                            _label(
                              label: 'login.email',
                            ),
                            Obx(
                              () => CustomTextField(
                                controller: _registerControl.txEmail,
                                enabled: true,
                                hint: 'email@io.com',
                                textInputType: TextInputType.emailAddress,
                                prefix: Icon(
                                  Icons.mail,
                                  color: Colors.black,
                                ),
                                onChanged: _registerControl.setEmail,
                              ),
                            ),
                            _label(
                              label: 'login.password',
                            ),
                            Obx(
                              () => CustomTextField(
                                controller: _registerControl.txPass,
                                enabled: true,
                                hint: '123456',
                                obscure:
                                    !_registerControl.passwordVisible.value,
                                prefix: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                suffix: CustomIconButton(
                                  radius: 32,
                                  iconData: _verifiIconVisibility(),
                                  onTap:
                                      _registerControl.togglePasswordVisibility,
                                ),
                                onChanged: _registerControl.setPassword,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: FlatButton(
                                  onPressed: () => Get.back(),
                                  child: Text(
                                    'login.loginPage',
                                    style: Get.textTheme.bodyText1.merge(
                                      TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ).tr(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 60.0,
                  margin: EdgeInsets.only(bottom: Get.height * .05),
                  child: Center(
                    // ANIMATION
                    child: CustomAnimation<double>(
                      control: _registerControl.controlAni,
                      tween: (60.0).tweenTo(10.0),
                      duration: 200.milliseconds,
                      curve: Curves.bounceInOut,
                      // BUILDER WITH VISIBILITYWIDGET
                      builder: (context, child, value) => Visibility(
                        visible: !_registerControl.loading.value,
                        replacement: Shimmer.fromColors(
                          baseColor: Colors.purpleAccent,
                          highlightColor: Colors.white,
                          child: Container(
                            height: value,
                            width: Get.width * .92,
                            decoration: BoxDecoration(
                              color: Colors.purpleAccent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        child: Container(
                          width: Get.width * .92,
                          height: value,
                          child: RaisedButton(
                            onPressed: _registerControl.loginPressed,
                            child: Text(
                              'login.register',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ).tr(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
