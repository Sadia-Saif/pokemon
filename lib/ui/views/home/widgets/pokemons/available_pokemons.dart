import 'package:flutter/material.dart';
import 'package:pokemon/static/pokemons.dart';
import 'package:pokemon/ui/views/home/widgets/pokemons/available_pokemons_card.dart';

import '../../../details/pokemons/pokemon_details.dart';

class AvailablePokemonsScreen extends StatelessWidget {
  const AvailablePokemonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      mainAxisSpacing: 15.0,
      crossAxisSpacing: 15.0,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        for (final pokemon in pokemons)
          AvailablePokemonCard(
            pokemon: pokemon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PokemonDetailsScreen(pokemon: pokemon),
                ),
              );
            },
          )
      ],
    );
  }
}
