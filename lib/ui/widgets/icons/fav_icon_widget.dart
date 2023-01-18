
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';


class FavIcon extends StatelessWidget {
  const FavIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FavoriteButton(
        iconSize: 30,
        isFavorite: true,
        iconDisabledColor: Colors.white,
        // ignore: no_leading_underscores_for_local_identifiers
        valueChanged: (_isFavorite) {
          // ignore: avoid_print
          print('Is Favorite : $_isFavorite');
        },
      ),
    );
  }
}
