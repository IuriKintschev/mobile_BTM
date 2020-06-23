import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class AuthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('appname').tr(),
      ),
    );
  }
}
