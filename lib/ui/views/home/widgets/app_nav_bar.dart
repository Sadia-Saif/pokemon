import 'package:flutter/material.dart';
import 'package:pokemon/routes/app_routes.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.yellow.shade600,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () => (Navigator.pushReplacementNamed(
                      context,
                      AppRoutes.favourite,
                    )),
                child: const Icon(
                  Icons.favorite,
                )),
            label: 'Wishlist',
          ),
        ],
      ),
    );
  }
}
