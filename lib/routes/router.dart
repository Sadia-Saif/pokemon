import 'package:flutter/material.dart';
import 'package:pokemon/ui/views/favourite/favourite.dart';
import 'package:pokemon/ui/views/home/home.dart';
import 'package:pokemon/ui/views/login/login.dart';
import 'package:pokemon/ui/views/registration/signup.dart';
import 'package:pokemon/ui/views/splash/splash.dart';

import 'app_routes.dart';

Map<String, WidgetBuilder> router = {
  AppRoutes.splash: (context) => const SplashScreen(),
  AppRoutes.signUp: (context) => const SignUpScreen(),
  AppRoutes.login: (context) => const LoginScreen(),
  AppRoutes.home: (context) => const HomeScreen(),
  AppRoutes.favourite: (context) => const FavouriteScreen(),
};
