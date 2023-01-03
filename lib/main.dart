import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/cubits/pokemon/cubit.dart';

import 'routes/app_routes.dart';
import 'routes/router.dart';

//TODO:Landscape mode should be used

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PokemonCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.yellow,
          primarySwatch: Colors.yellow,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Pokemon',
        routes: router,
        initialRoute: AppRoutes.splash,
      ),
    );
  }
}
