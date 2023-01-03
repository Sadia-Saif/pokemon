// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import '../models/base.dart';

// class PokemonController {
//   Future<Base> getPoke(String name, String url) async {
//     const pokeURL = "https://pokeapi.co/api/v2/pokemon/";

//     final response = await http.get(
//       Uri.parse(pokeURL),
//     );

//     if (response.statusCode == 200) {
//       final raw = response.body;

//       final map = jsonDecode(raw);

//       final base = Base.fromMap(map);

//       return base;
//     }

//     // Error/Unknown
//     throw 'Some error has occured!';
//   }
// }
