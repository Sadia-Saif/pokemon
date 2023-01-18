import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon/pokemon.dart';
import 'package:pokemon/ui/widgets/texts/app_text_widget.dart';
import 'package:pokemon/utils/static_assets.dart';

class PokemonDetailsScreen extends StatelessWidget {
  const PokemonDetailsScreen({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0.0,
        leading: Center(
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            iconSize: 20,
            onPressed: () {
              Navigator.pop(context);
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
            padding: const EdgeInsets.only(top: 90),
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
                  top: 130,
                  right: 30,
                  left: 30,
                ),
                child: Column(children: [
                  CustomText(
                    textString: pokemon.name,
                    textSize: 30,
                    textcolors: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    textString: pokemon.family,
                    textSize: 15,
                    textcolors: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (final power in pokemon.powers)
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: Colors.white,
                            border: Border.all(color: Colors.green.shade400),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Row(
                              children: [
                                Text(power),
                                const Spacer(),
                                Icon(
                                  Icons.grass_sharp,
                                  color: Colors.green.shade400,
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: CustomText(
                      textString: StaticAssets.tAbout,
                      textSize: 25,
                      textcolors: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: CustomText(
                      textString: pokemon.about,
                      textSize: 15,
                      textcolors: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
              ),
            ),
          ),
          Positioned(
            top: 2,
            child: Image.asset(
              pokemon.image,
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
