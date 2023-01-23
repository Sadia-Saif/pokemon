import 'package:authentication_repository/authentication_repository.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/app/bloc/app_bloc.dart';
import 'package:pokemon/cubits/pokemon/cubit.dart';
import 'package:pokemon/routes/app_routes.dart';
import 'package:pokemon/routes/router.dart';
import 'package:pokemon/utils/static_assets.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required AuthenticationRepository authenticationRepository,
  }) : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (_) => AppBloc(
          authenticationRepository: _authenticationRepository,
        ),
        child: const MyApp(),
      ),
    );
  }
}

// class AppView extends StatelessWidget {
//   const AppView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(

//       home: FlowBuilder<AppStatus>(
//         state: context.select((AppBloc bloc) => bloc.state.status),
//         onGeneratePages: onGenerateAppViewPages,
//       ),
//     );
//   }
// }

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
