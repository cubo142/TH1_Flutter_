import 'package:flutter/widgets.dart';
import 'package:th_buoi1/pages/signinpage.dart';
import 'package:th_buoi1/pages/signuppage.dart';
import 'package:th_buoi1/pages/splashpage.dart';

final Map<String, WidgetBuilder> route = {
  SplashPage.routeName: (context) => SplashPage(),
  SignInPage.routeName: (context) => SignInPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
};
