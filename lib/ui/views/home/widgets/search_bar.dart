import 'package:flutter/material.dart';
import 'package:pokemon/utils/static_assets.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.yellow.shade600,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.yellow.shade600,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: Colors.green,
          ),
        ),
        hintText: StaticAssets.tSearchFor,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.yellow.shade600,
        ),
        suffixIcon: Icon(
          Icons.mic,
          color: Colors.yellow.shade600,
        ),
      ),
    );
  }
}
