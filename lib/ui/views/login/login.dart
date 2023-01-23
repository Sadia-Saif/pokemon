import 'package:flutter/material.dart';
import 'package:pokemon/routes/app_routes.dart';
import 'package:pokemon/ui/widgets/buttons/app_button.dart';
import 'package:pokemon/ui/widgets/texts/app_text_fields/custom_text_form_field.dart';
import 'package:pokemon/ui/widgets/texts/app_text_span/app_text_span.dart';

part 'widgets/forgot_password.dart';

//TODO: remove back button done,

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static Page<void> page() => const MaterialPage<void>(child: LoginScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "Pokemon",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Login to continue',
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              const SizedBox(height: 25),
              const Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const CustomTextFormField(
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              const Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              CustomTextFormField(
                hintText: 'Password',
                sufixIcon: IconButton(
                  icon: const Icon(
                    Icons.visibility_off,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                obscureText: true,
              ),
              const SizedBox(height: 15),
              const CustomForgotPassword(),
              const SizedBox(height: 30),
              CustomTextSpan(
                spanText1: 'By Continuing,you agree to our ',
                spanText2: 'Terms of services',
                spanText3: ' and ',
                spanText4: 'privacy policy.',
                spanColor1: Colors.black,
                spanColor2: Colors.yellow.shade800,
                spanColor3: Colors.black,
                spanColor4: Colors.yellow.shade800,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: 350,
                child: AppButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    AppRoutes.dashboard,
                  ),
                  label: 'Log In',
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.signUp,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Not Have Registered? ',
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Signup now',
                        style: TextStyle(color: Colors.yellow.shade900),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
