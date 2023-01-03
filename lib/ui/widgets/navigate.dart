import 'package:flutter/material.dart';

class CustomGestureDetector extends StatelessWidget {
  const CustomGestureDetector({super.key, this.onTap, required Icon child});

  final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => onTap);
  }
}
