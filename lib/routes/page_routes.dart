// ignore_for_file: equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:pokemon/Views/home_view.dart';

import '../Views/auth/login_view.dart';
import '../Views/auth/signup_view.dart';
import '../Views/splash_view.dart';
import 'app_routes.dart';

Map<String, WidgetBuilder> routes = {
  Routes.Splash: (_) => SplashScreen(),
  Routes.SignUp: (_) => SignUp(),
  Routes.Login: (_) => Login(),
  Routes.Home: (_) => HomeScreen(),
};
