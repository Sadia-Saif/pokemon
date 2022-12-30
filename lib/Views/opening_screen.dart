import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/cubit/pokemon/cubit.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  void initState() {
    super.initState();

    //
    final pokemonCubit = BlocProvider.of<PokemonCubit>(context);
    pokemonCubit.fetch();
  }

  // BlocListener = Listen (navigations, snackbars etc)
  // BlocBuilder = UI build
  // BlocConsumer = List + Build

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<PokemonCubit, PokemonState>(
        builder: (BuildContext context, PokemonState state) {
          // loading -> CircleProgressIndicator
          if (state is PokeLoading) {
            return Center(child: CircularProgressIndicator());
          }

          // success -> ListTile
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

          // failure -> Text("ERROR MESSAGE")
          if (state is PokeFailure) {
            return Center(
              child: Text(state.error!),
            );
          }

          return Center(
            child: Text('Something unusual happened!'),
          );
        },
      ),
    );
  }
}
