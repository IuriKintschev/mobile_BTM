import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('splash.wellcome').tr(),
      ),
    );
  }
}
