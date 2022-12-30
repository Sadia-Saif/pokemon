import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/base_model.dart';

class PokemonController {
  Future<Base> getPoke(String name, String url) async {
    final pokeURL = "https://pokeapi.co/api/v2/pokemon/";

    final response = await http.get(
      Uri.parse(pokeURL),
    );

    if (response.statusCode == 200) {
      final raw = response.body;

      final map = jsonDecode(raw);

      final base = Base.fromMap(map);

      return base;
    }

    // Error/Unknown
    throw 'Some error has occured!';
  }
}
