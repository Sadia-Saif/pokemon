// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/cubits/pokemon/cubit.dart';
import 'package:pokemon/ui/widgets/texts/app_text_widget.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  @override
  void initState() {
    super.initState();

    final pokemonCubit = BlocProvider.of<PokemonCubit>(context);
    pokemonCubit.fetch();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final height = size.height;
    final width = size.width;
    return
        // Scaffold(
        //   backgroundColor: Colors.yellow.shade600,
        //   appBar: AppBar(
        //     backgroundColor: Colors.transparent,
        //     elevation: 0.0,
        //     leading: GestureDetector(
        //       onTap: (() => Navigator.pushReplacementNamed(
        //             context,
        //             AppRoutes.home,
        //           )),
        //       child: const Center(
        //         child: Icon(
        //           Icons.arrow_back_ios,
        //           size: 20,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //     centerTitle: true,
        //     title: const Text(
        //       "Pokemon",
        //       style: TextStyle(
        //           color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        //       textAlign: TextAlign.start,
        //     ),
        //   ),
        //   body:
        BlocBuilder<PokemonCubit, PokemonState>(
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

              return Container(
                width: width,
                height: 80,
                decoration: const BoxDecoration(color: Colors.white),
                child: Container(
                  height: 90,
                  width: width,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Card(
                    color: Colors.white,
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomText(
                            textString: poke.name,
                            textcolors: Colors.black,
                            textSize: 15,
                          ),
                          const SizedBox(
                            width: 190,
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      subtitle: CustomText(
                        textString: poke.url,
                        textcolors: Colors.grey,
                        textSize: 12,
                      ),
                    ),
                  ),
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
    // );
  }
}
