
import 'package:flutter/widgets.dart';
import 'package:th_buoi1/pages/homepage.dart';
import 'package:th_buoi1/pages/signinpage.dart';
import 'package:th_buoi1/pages/signuppage.dart';
import 'package:th_buoi1/pages/splashpage.dart';
import 'package:th_buoi1/pages/categorypage.dart';
import 'package:th_buoi1/pages/productpage.dart';
import 'package:th_buoi1/pages/cartpage.dart';

final Map<String, WidgetBuilder> route = {
  SplashPage.routeName: (context) => SplashPage(),
  SignInPage.routeName: (context) => SignInPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  HomePage.routeName: (context) => HomePage(),
  CategoryPage.routeName: (context) => CategoryPage(),
  ProductPage.routeName: (cotext) => ProductPage(),
  CartPage.routeName: (context) => CartPage(),
};
