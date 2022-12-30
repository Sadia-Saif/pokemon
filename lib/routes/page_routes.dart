// ignore_for_file: equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:pokemon/Views/home_view.dart';
import 'package:pokemon/Views/opening_screen.dart';

import '../Views/auth/login_view.dart';
import '../Views/auth/signup_view.dart';
import '../Views/splash_view.dart';
import 'app_routes.dart';

Map<String, WidgetBuilder> routes = {
  AppRoutes.Splash: (context) => SplashScreen(),
  AppRoutes.SignUp: (context) => SignUp(),
  AppRoutes.Login: (context) => Login(),
  AppRoutes.Home: (context) => HomeScreen(),
  AppRoutes.opening: (context) => OpeningScreen(),
};
