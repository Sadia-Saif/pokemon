import 'package:pokemon/models/pokemon/pokemon.dart';
import 'package:pokemon/utils/static_assets.dart';

final List<Pokemon> pokemons = [
  Pokemon(
    image: StaticAssets.pikachu,
    name: 'Pikachu',
    about:
        "It is a major character in the Pokémon franchise, serving as its mascot and as a major mascot for Nintendo. Pikachu is widely considered to be the most popular and well-known Pokémon species, largely due to its appearance in the Pokémon anime television series as the companion of protagonist Ash Ketchum.",
    family: 'Cat',
    powers: ['Electric', 'Seed', 'Strong'],
  ),
  Pokemon(
    image: StaticAssets.balbasaur2,
    name: 'Blbasaur',
    about:
        "Bulbasaur is a small, quadrupedal amphibian Pokémon that has blue-green skin with darker patches. It has red eyes with white pupils, pointed, ear-like structures on top of its head, and a short, blunt snout with a wide mouth. A pair of small, pointed teeth are visible in the upper jaw when its mouth is open. Each of its thick legs ends with three sharp claws.",
    family: 'Lizard',
    powers: ['Growth', 'Speed', "Poison"],
  ),
  Pokemon(
    image: StaticAssets.evee,
    name: 'Eevee',
    about:
        "Eevee (イーブイ, Iibui) is a Normal-type Pokémon introduced in Generation I. It's well known for being the Pokémon with the highest number of evolution possibilities (8), due to its unstable genetic makeup. It is the Version Mascot and First partner Pokémon for the game Pokémon: Let's Go, Eevee!. It also has a Gigantamax form.",
    family: 'Evolution',
    powers: ['Strong', 'Hiding', 'Change'],
  ),
  Pokemon(
    image: StaticAssets.charizard,
    name: 'Charizard',
    about:
        "Known as the Flame Pokémon, Charizards are violent yet honorable creatures, flying proudly around the sky and always looking for powerful enemies to fight with. Charizard is also the version mascot of Pokémon Red and FireRed versions, and makes an appearance on the boxarts of many other Pokémon games.",
    family: 'Nintendo',
    powers: ['Flying', 'Blaze', 'Anger'],
  ),
];
