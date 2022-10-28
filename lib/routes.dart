import 'package:college_app/screens/home_screen/home_screen.dart';
import 'package:college_app/screens/login_screen/login_screen.dart';
import 'package:college_app/screens/splashscreen/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  //WelcomePage.routeName: (context) => WelcomePage(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
