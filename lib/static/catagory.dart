import 'package:pokemon/models/catagory/catagory.dart';
import 'package:pokemon/utils/static_assets.dart';

final List<Catagory> catagories = [
  Catagory(image: StaticAssets.pokemon, title: 'Pokemon'),
  Catagory(image: StaticAssets.electricity, title: 'Moves'),
  Catagory(image: StaticAssets.evolution, title: 'Evolution'),
  Catagory(image: StaticAssets.location, title: 'Locations'),
];
