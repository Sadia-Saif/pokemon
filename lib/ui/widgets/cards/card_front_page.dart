// ignore_for_file: avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';

class CardFrontView extends StatelessWidget {
  const CardFrontView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Container(
      height: 120,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blue.shade50,
          border: Border.all(color: Colors.blue.shade800)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  'assets/images/icon.png',
                  height: 30,
                  width: 30,
                  alignment: Alignment.topLeft,
                  color: Colors.pink,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                SizedBox(
                  width: width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ms. Sadia Saif',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Your Dress is Ready',
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '1 Shirt,2 Dresses',
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.call,
                  color: Colors.pink,
                ),
              ],
            ),
          ),
          Container(
            width: width / 1.4,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade800),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.timelapse,
                  color: Colors.pink,
                  size: 18,
                ),
                SizedBox(
                  width: 8,
                ),
                Center(
                  child: Text(
                    'Deleivery on 22 May 2022',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
