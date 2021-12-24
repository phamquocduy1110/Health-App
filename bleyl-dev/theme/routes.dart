import 'package:flutter/material.dart';
import 'package:bleyl_dev/views/login_screen.dart';
import 'package:bleyl_dev/views/menu.dart';
import 'package:bleyl_dev/views/register_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';
  static const String menu = '/menu';

  static Map<String, WidgetBuilder> define() {
    return {
      authLogin: (context) => Login(),
      authRegister: (context) => Register(),
      menu: (context) => MenuScreen(),
    };
  }
}
