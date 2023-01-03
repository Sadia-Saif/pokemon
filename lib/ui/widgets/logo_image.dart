import 'package:flutter/material.dart';
import 'package:pokemon/utils/static_assets.dart';

class PokeLogoImage extends StatelessWidget {
  final double size;

  const PokeLogoImage({
    Key? key,
    this.size = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: StaticAssets.poke,
      child: SizedBox(
        height: size,
        child: Image.asset(
          StaticAssets.logo,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
