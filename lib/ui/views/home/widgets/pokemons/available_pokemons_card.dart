import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon/pokemon.dart';

class AvailablePokemonCard extends StatelessWidget {
  const AvailablePokemonCard({
    Key? key,
    required this.pokemon,
    required this.onTap,
  }) : super(key: key);

  final Pokemon pokemon;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: 150,
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.yellow.shade600),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  pokemon.image,
                  height: 55,
                  width: 80,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  pokemon.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // customIcon,
                    const SizedBox(
                      height: 5.0,
                      width: 5.0,
                    ),
                    Text(
                      pokemon.family,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.black, fontSize: 13),
                    ),
                    const SizedBox(
                      height: 3.0,
                      width: 3.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                  width: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
