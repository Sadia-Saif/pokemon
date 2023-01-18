import 'package:flutter/material.dart';
import 'package:pokemon/static/catagory.dart';
import 'package:pokemon/ui/views/details/catagory/catagory_details.dart';
import 'package:pokemon/ui/views/home/widgets/catagory/catagory_card.dart';

class CatagoryScreen extends StatelessWidget {
  const CatagoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        for (final catagory in catagories)
          CatagoryCard(
            catagory: catagory,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CatagoryDetailsScreen(),
                ),
              );
            },
          )
      ],
    );
  }
}
