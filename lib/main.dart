import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/cubit/pokemon/cubit.dart';
import 'package:pokemon/routes/app_routes.dart';

import 'routes/page_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokemon',
        routes: routes,
        initialRoute: AppRoutes.opening,
      ),
    );
  }
}
