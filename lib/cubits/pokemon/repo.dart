part of 'cubit.dart';

class PokeRepo {
  Future<Base> getPoke() => PokemonDataProvider.getPoke();
}
