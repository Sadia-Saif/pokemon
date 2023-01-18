import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/cubits/pokemon/cubit.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  void initState() {
    BlocProvider.of<PokemonCubit>(context).fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(
      builder: (BuildContext context, PokemonState state) {
        if (state is PokeLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is PokeSuccess) {
          final base = state.data;
          final pokemons = base!.results;

          return ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              final poke = pokemons[index];

              return Card(
                child: ListTile(
                  title: Text(poke.name),
                  subtitle: Text(poke.url),
                ),
              );
            },
          );
        }

        if (state is PokeFailure) {
          return Center(
            child: Text(state.error!),
          );
        }

        return const Center(
          child: Text('Something unusual happened!'),
        );
      },
    );
  }
}
