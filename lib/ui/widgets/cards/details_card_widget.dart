// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:pokemon/ui/widgets/icons/fav_icon_widget.dart';

class DetailsCrad extends StatelessWidget {
  const DetailsCrad({
    Key? key,
    this.name,
    this.experience,
    this.price,
    this.distance,
    this.rating,
    this.img,
    this.specialization,
    this.ht,
    this.wt,
    this.onTap,
    this.heightt,
  }) : super(key: key);
  final String? name;
  final int? experience;
  final int? price;
  final double? distance;
  final double? rating;
  final String? img;
  final double? heightt;
  final String? specialization;
  final double? ht;
  final double? wt;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 190, //ht!,
        width: width, //wt!,
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.pink.shade800),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  width: width / 3,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue,
                    image: img != null
                        ? DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(img!),
                          )
                        : null,
                  ),
                ),
                Text(
                  '$specialization',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 8.0,
            ),
            SizedBox(
              width: width / 1.99,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        child: Text(
                          '$name',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const FavIcon(),
                    ],
                  ),
                  Text(
                    '$experience Years of Experience',
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Colors.black),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Pricing starts from ',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\$$price/-',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: Colors.pink,
                      ),
                      Text(
                        '$distance Km',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.green),
                      color: const Color.fromARGB(255, 25, 167, 30),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          '$rating',
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.green),
                          color: Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'View Profile',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 28,
                        width: width / 5.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.green),
                          color: Colors.pink,
                        ),
                        child: const Center(
                          child: Text(
                            'Book Now',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
