import 'package:flutter/material.dart';

class CustomeBottomNavBar extends StatelessWidget {
  CustomeBottomNavBar(
      {super.key,
      required this.bgcolor,
      required this.Icon1,
      required this.Icon2,
      required this.Icon3});

  final Color? bgcolor;
  final Widget Icon1;
  final Widget Icon2;
  final Widget Icon3;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: bgcolor,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: const TextStyle(color: Colors.white),
            ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(150.0),
          topRight: Radius.circular(150.0),
        ),
        child: BottomNavigationBar(
          fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon1,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon2,
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon3,
              label: 'Wishlist',
            ),
          ],
        ),
      ),
    );
  }
}
