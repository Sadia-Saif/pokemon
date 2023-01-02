import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../widgets/logo_image.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async {
    await Future.delayed(Duration(seconds: 5));
    String route = Routes.signUp;
    Navigator.pushReplacementNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow.shade400,
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PokeLogoImage(
                size: MediaQuery.of(context).size.height / 3,
              ),
              Container(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
