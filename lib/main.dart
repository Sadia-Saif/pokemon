import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/cubits/pokemon/cubit.dart';
import 'package:pokemon/utils/static_assets.dart';

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
          // brightness: Brightness.whit,
          primaryColor: Colors.yellow.shade600,
          primarySwatch: Colors.yellow,
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: ''),
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: StaticAssets.tPokemon,
        routes: router,
        initialRoute: AppRoutes.splash,
      ),
    );
  }
}
