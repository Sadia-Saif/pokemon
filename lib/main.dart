// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
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

  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // # Get Entire collection

  // QuerySnapshot snapshot =
  // await FirebaseFirestore.instance.collection('users').get();
  //   for (var doc in snapshot.docs) {
  //   log(doc.data().toString());
  // }

  // # Get document with id
  DocumentSnapshot snapshot = await _firestore
      .collection('users')
      .doc('mm3oyrYT9qVcZoovhAJuBay9AQX2')
      .get();
  log(snapshot.data().toString());

  // Post data in collection
  // Map<String, dynamic> newUserData = {
  //   "name": "Maham",
  //   "email": "maham@gmail.com"
  // };
  // await FirebaseFirestore.instance.collection("users").add(newUserData);
  // log("new user saved");

  // Post data and make unique id
  Map<String, dynamic> newUserData = {
    "name": "Fatima",
    "email": "fatima@gmail.com"
  };
  await _firestore
      .collection("users")
      .doc("id_4")
      .set(newUserData);
  log("new user saved");

  // Post data and make unique id
  Map<String, dynamic> newUserData2 = {
    "name": "maham",
    "email": "maham@gmail.com"
  };
  await _firestore
      .collection("users")
      .doc("id_5")
      .set(newUserData2);
  log("new user saved");

// Update data

  await _firestore
      .collection("users")
      .doc("yPAhWkFdQ7mS80aGG4sR")
      .update({"name": "Mariyam", "email": "mariyam@gmail.com"});
  log("new user updated");

// delete data

  await _firestore.collection("users").doc("id_5").delete();
  log("new user deleted");

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
