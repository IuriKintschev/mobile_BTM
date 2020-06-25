import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'package:mobile_BTM/app/core/controllers/auth_controller.dart';

class LoginWidget extends StatelessWidget {
  final AuthControloler c = AuthControloler.to;

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: c.increment,
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Obx(
            () => Text('appname').tr(
              args: [c.count.string],
            ),
          ),
        ),
      );
}
