import 'package:flutter/material.dart';
import 'package:nlwflutter/modules/home/home_page.dart';
import 'package:nlwflutter/modules/login/login_page.dart';
import 'package:nlwflutter/modules/splash/splash_page.dart';
import 'package:nlwflutter/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary
      ),
      home: LoginPage(),
    );
  }
}
