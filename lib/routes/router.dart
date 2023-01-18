import 'package:flutter/material.dart';
import 'package:pokemon/ui/views/dashboard/dashboard.dart';
import 'package:pokemon/ui/views/details/catagory/catagory_details.dart';

import 'package:pokemon/ui/views/favourite/favourite.dart';

import 'package:pokemon/ui/views/login/login.dart';
import 'package:pokemon/ui/views/home/widgets/pokemons/pokemon_list_api.dart';
import 'package:pokemon/ui/views/registration/signup.dart';
import 'package:pokemon/ui/views/splash/splash.dart';

import 'app_routes.dart';

Map<String, WidgetBuilder> router = {
  AppRoutes.splash: (context) => const SplashScreen(),
  AppRoutes.signUp: (context) => const SignUpScreen(),
  AppRoutes.login: (context) => const LoginScreen(),
  AppRoutes.pokemon: (context) => const PokemonList(),
  AppRoutes.pokemoon: (context) => const CatagoryDetailsScreen(),
  AppRoutes.favourite: (context) => const Favourite(),
  AppRoutes.dashboard: (context) => const DashboardScreen(),
};
