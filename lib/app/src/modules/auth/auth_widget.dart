import 'package:flutter/material.dart';
import "package:build_context/build_context.dart";
import 'package:easy_localization/easy_localization.dart';

class AuthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'appname',
          style: context.textTheme.bodyText1,
        ).tr(),
      ),
    );
  }
}
