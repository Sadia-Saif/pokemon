

import 'package:flutter/material.dart';

import '../views/favourite.dart';
import '../views/registration/home.dart';
import '../views/registration/login.dart';
import '../views/registration/signup.dart';
import '../views/splash.dart';
import 'app_routes.dart';

Map<String, WidgetBuilder> routes = {
  Routes.splash: (context) => SplashScreen(),
  Routes.signUp: (context) => SignUpScreen(),
  Routes.login: (context) => LoginScreen(),
  Routes.home: (context) => HomeScreen(),
  Routes.favourite: (context) => FavScreen(),
};
