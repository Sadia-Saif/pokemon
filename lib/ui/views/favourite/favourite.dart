import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/cubits/pokemon/cubit.dart';
import 'package:pokemon/routes/app_routes.dart';
import 'package:pokemon/ui/widgets/bottom_nav.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: (() => Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.login,
                )),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          centerTitle: true,
          title: const Text(
            "Favourite",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          actions: [
            Container(
              height: 40.0,
              width: 40.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: BlocBuilder<PokemonCubit, PokemonState>(
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
        ),
        bottomNavigationBar: CustomeBottomNavBar(
          bgcolor: Colors.yellow.shade600,
          icon1: GestureDetector(
              onTap: () => (Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.home,
                  )),
              child: const Icon(Icons.home, color: Colors.white)),
          icon2: const Icon(Icons.history, color: Colors.white),
          icon3: const Icon(Icons.favorite, color: Colors.white),
        ));
  }
}
