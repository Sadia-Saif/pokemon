import 'package:flutter/material.dart';
import 'package:pokemon/ui/views/home/widgets/catagory/catagory_grid.dart';
import 'package:pokemon/ui/views/home/widgets/pokemons/available_pokemons.dart';
import 'package:pokemon/ui/widgets/texts/app_text_widget.dart';
import 'package:pokemon/utils/static_assets.dart';

import 'widgets/search_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(
            height: 10,
          ),
          CustomText(
            textString: StaticAssets.tlookingFor,
            textcolors: Colors.black,
            textSize: 15,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 20,
          ),
          SearchBar(),
          SizedBox(
            height: 15.0,
          ),
          CustomText(
            textString: StaticAssets.tCatagory,
            textSize: 15,
            textcolors: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 20.0,
          ),
          CatagoryScreen(),
          SizedBox(
            height: 30.0,
          ),
          Text(
            StaticAssets.tAvailablePokemons,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          AvailablePokemonsScreen(),
          SizedBox(
            height: 40,
            width: 40,
          ),
        ],
      ),
    );
  }
}
