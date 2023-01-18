import 'package:flutter/material.dart';
import 'package:pokemon/models/catagory/catagory.dart';

class CatagoryCard extends StatelessWidget {
  const CatagoryCard({Key? key, required this.onTap, required this.catagory})
      : super(key: key);

  final void Function()? onTap;
  final Catagory catagory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border: Border.all(color: Colors.yellow.shade600),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                catagory.image,
                height: 50,
                width: 50,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                catagory.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
