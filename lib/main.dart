// @dart=2.9

import 'package:flutter/material.dart';
import 'package:th_buoi1/pages/signinpage.dart';
import 'package:th_buoi1/pages/signuppage.dart';
import 'package:th_buoi1/pages/splashpage.dart';
import 'package:th_buoi1/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      routes: route,
    );
  }
}
// This widget is the root of your application.
