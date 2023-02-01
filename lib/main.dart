import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/app/bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:pokemon/cubits/auth/cubit.dart';
import 'package:pokemon/cubits/pokemon/cubit.dart';
import 'package:pokemon/providers/form_provider.dart';
import 'package:pokemon/routes/app_routes.dart';
import 'package:pokemon/routes/router.dart';
import 'package:pokemon/utils/static_assets.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => PokemonCubit(),
        ),
        ChangeNotifierProvider(
          create: (context) => FormProvider(),
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
        localizationsDelegates: const [
          FormBuilderLocalizations.delegate,
        ],
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => AuthCubit(),
//         ),
//         BlocProvider(
//           create: (context) => PokemonCubit(),
//         ),
//       ],
//       child: MaterialApp(
//         theme: ThemeData(
//           // brightness: Brightness.whit,
//           primaryColor: Colors.yellow.shade600,
//           primarySwatch: Colors.yellow,
//           textTheme: const TextTheme(
//             headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//             headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//             bodyText2: TextStyle(fontSize: 14.0, fontFamily: ''),
//           ),
//         ),
//         debugShowCheckedModeBanner: false,
//         title: StaticAssets.tPokemon,
//         routes: router,
//         initialRoute: AppRoutes.splash,
//         localizationsDelegates: const [
//           FormBuilderLocalizations.delegate,
//         ],
//       ),
//     );
//   }
// }
