import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Center(
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.grey.shade700,
            ),
          ),
          centerTitle: true,
          title: const Text(
            "Pokemon",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          actions: [
            Container(
              height: 40.0,
              width: 40.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Create account',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sign up to continue',
                    style: TextStyle(fontSize: 17, color: Colors.grey),
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
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "UserName",
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5),
                    ),
                  ),
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
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5),
                    ),
                  ),
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
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: const OutlineInputBorder(),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.visibility_off,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.green.shade800,
                      size: 12,
                    ),
                    const SizedBox(width: 5),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'At least 8 characters',
                        style: TextStyle(
                            fontSize: 15, color: Colors.green.shade900),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.green.shade800,
                      size: 12,
                    ),
                    const SizedBox(width: 5),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Include special characters',
                        style: TextStyle(
                            fontSize: 15, color: Colors.green.shade900),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    text: 'By Continuing,you agree to our ',
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Terms of services',
                        style: TextStyle(
                          color: Colors.yellow.shade800,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      const TextSpan(
                        text: ' and',
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextSpan(
                        text: ' privacy policy.',
                        style: TextStyle(
                          color: Colors.yellow.shade800,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellow.shade600),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    onPressed: (() =>
                        Navigator.pushReplacementNamed(context, Routes.login)),
                    child: const Text(
                      'Create acoount',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, Routes.login),
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
