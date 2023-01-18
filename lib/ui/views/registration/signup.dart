import 'package:flutter/material.dart';
import 'package:pokemon/ui/widgets/buttons/app_button.dart';
import 'package:pokemon/ui/widgets/texts/app_text_fields/custom_text_form_field.dart';
import 'package:pokemon/ui/widgets/texts/app_text_span/app_text_span.dart';
import 'package:pokemon/ui/widgets/texts/app_text_widget.dart';
part "widgets/password_hints.dart";

//TODO: remove label

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
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
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    textString: 'Create account',
                    textSize: 25,
                    fontWeight: FontWeight.bold,
                    textcolors: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    textString: 'Sign up to continue',
                    textSize: 17,
                    textcolors: Colors.grey,
                  ),
                ),
                const SizedBox(height: 25),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'UserName',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const CustomTextFormField(
                  hintText: 'UserName',
                  obscureText: false,
                ),
                const SizedBox(height: 25),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const CustomTextFormField(
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(height: 25),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const CustomTextFormField(
                  hintText: 'Password',
                  obscureText: false,
                ),
                const SizedBox(height: 15),
                const PasswordHints(textString: 'At least 8 characters'),
                const SizedBox(height: 7),
                const PasswordHints(textString: 'Include special characters'),
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
                    onPressed: () => Navigator.pop(context),
                    label: 'Sign up',
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: RichText(
                    text: TextSpan(
                      text: 'Already a member? ',
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Log in',
                          style: TextStyle(color: Colors.yellow.shade900),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
