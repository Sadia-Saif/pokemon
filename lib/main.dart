import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/app/bloc_observer.dart';
import 'package:pokemon/app/view/app.dart';
import 'package:pokemon/cubits/pokemon/cubit.dart';
import 'package:pokemon/utils/static_assets.dart';
import 'package:firebase_core/firebase_core.dart';

import 'routes/app_routes.dart';
import 'routes/router.dart';

//TODO:Landscape mode should be used

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();

  await Firebase.initializeApp();

  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;
  runApp(
    App(authenticationRepository: authenticationRepository),
    // const MyApp(),
  );
}

