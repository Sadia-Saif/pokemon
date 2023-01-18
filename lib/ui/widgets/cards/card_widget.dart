import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    this.name,
    this.experience,
    this.price,
    this.distance,
    this.rating,
    this.ht,
    this.wt,
    this.onTap,
  }) : super(key: key);
  final String? name;
  final int? experience;
  final int? price;
  final double? distance;
  final double? rating;
  final double? ht;
  final double? wt;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: ht!,
        width: wt!,
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.pink.shade800),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$name',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(width: 15),
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
                  ],
                ),

                Text(
                  '$experience Years of Experience',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
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
                        style:
                            const TextStyle(color: Colors.black, fontSize: 12),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () {
                        //     // navigate to desired screen
                        //   })
                      ),
                    ],
                  ),
                ),

                // Text(
                //   '\$$price/-',
                //   style: const TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 12,
                //       color: Colors.black),
                // ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
