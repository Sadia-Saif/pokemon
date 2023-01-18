import 'package:flutter/material.dart';

class CustomeBottomNavBar extends StatelessWidget {
  const CustomeBottomNavBar(
      {super.key,
      required this.bgcolor,
      required this.icon1,
      required this.icon2,
      required this.icon3});

  final Color? bgcolor;
  final Widget icon1;
  final Widget icon2;
  final Widget icon3;

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
              icon: icon1,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: icon2,
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: icon3,
              label: 'Wishlist',
            ),
          ],
        ),
      ),
    );
  }
}
