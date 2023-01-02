import 'package:flutter/material.dart';

import '../utils/constants/images.dart';

class PokeLogoImage extends StatelessWidget {
  final double size;

  const PokeLogoImage({
    Key? key,
    this.size = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: Images.kPokeball,
      child: Container(
        height: size,
        child: Image.asset(
          Images.kPokelogo,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
