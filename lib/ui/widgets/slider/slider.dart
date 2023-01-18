import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/ui/widgets/texts/app_text_widget.dart';
import 'package:pokemon/utils/static_assets.dart';

class Slider extends StatelessWidget {
  const Slider({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          items: [
            //1st Part
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
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
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
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
                  ],
                ),
              ],
            ),
            //Second Part
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
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
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
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
                  ],
                ),
              ],
            ),
            //2nd Image of Slider
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}
