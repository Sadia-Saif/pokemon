import 'package:flutter/material.dart';
import 'package:pokemon/routes/app_routes.dart';
import 'package:pokemon/ui/widgets/logo_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async {
    await Future.delayed(const Duration(seconds: 5));
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, AppRoutes.signUp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow.shade400,
        constraints: const BoxConstraints.expand(),
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
