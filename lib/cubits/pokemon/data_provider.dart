part of 'cubit.dart';

// auth_data_provider



class PokemonDataProvider {
  static Future<Base> getPoke() async {
    try {
      const pokeURL = "https://pokeapi.co/api/v2/pokemon/";

      final response = await http.get(Uri.parse(pokeURL));

      final raw = response.body;

      final map = jsonDecode(raw);

      final base = Base.fromMap(map);

      return base;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> saveLocal(Result result) async {
    final prefs = await SharedPreferences.getInstance();

    final value = jsonEncode(result);
    prefs.setString(result.name, value);
  }

  Future<Result> fetchLocal(String name) async {
    final prefs = await SharedPreferences.getInstance();

    final raw = prefs.getString(name);

    final result = jsonDecode(raw!);

    return result;
  }
}
