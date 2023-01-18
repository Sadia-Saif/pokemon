import 'package:flutter/material.dart';
import 'package:pokemon/constants/colors.dart';
import 'package:pokemon/routes/app_routes.dart';
import 'package:pokemon/ui/views/home/widgets/pokemons/pokemon_list_api.dart';
import 'package:pokemon/ui/widgets/texts/app_text_widget.dart';
import 'package:pokemon/utils/static_assets.dart';

class CatagoryDetailsScreen extends StatefulWidget {
  const CatagoryDetailsScreen({super.key});

  @override
  State<CatagoryDetailsScreen> createState() => _CatagoryDetailsScreenState();
}

class _CatagoryDetailsScreenState extends State<CatagoryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: UIColors.primaryColor,
      appBar: AppBar(
        backgroundColor: UIColors.primaryColor,
        elevation: 0.0,
        leading: Center(
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            iconSize: 20,
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.home);
            },
          ),
        ),
        centerTitle: true,
        title: const CustomText(
          textSize: 20,
          textString: StaticAssets.tDetails,
          textcolors: Colors.black,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        textDirection: TextDirection.rtl,
        clipBehavior: Clip.hardEdge,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  right: 30,
                  left: 30,
                ),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.pokemon,
                          ),
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              color: Colors.white,
                              border: Border.all(color: Colors.green.shade400),
                            ),
                            child: Center(
                              child: CustomText(
                                textString: StaticAssets.tPokemon,
                                textSize: 15,
                                textcolors: Colors.green.shade400,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.favourite,
                          ),
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              color: Colors.white,
                              border: Border.all(color: Colors.purple),
                            ),
                            child: const Center(
                              child: CustomText(
                                textString: StaticAssets.tFavourite,
                                textSize: 15,
                                textcolors: Colors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const PokemonList(),
                  ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
