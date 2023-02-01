import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/configs/app.dart';
import 'package:pokemon/cubits/auth/cubit.dart';
import 'package:pokemon/providers/form_provider.dart';
import 'package:pokemon/routes/app_routes.dart';
import 'package:pokemon/ui/widgets/buttons/app_button.dart';
import 'package:pokemon/ui/widgets/loader/full_screen_loader.dart';
import 'package:pokemon/ui/widgets/screen/screen.dart';
import 'package:pokemon/ui/widgets/texts/app_text_fields/custom_text_form_field.dart';
import 'package:pokemon/ui/widgets/texts/app_text_span/app_text_span.dart';
import 'package:pokemon/utils/custom_snackbar.dart';

part 'widgets/forgot_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static Page<void> page() => const MaterialPage<void>(child: LoginScreen());

  @override
  Widget build(BuildContext context) {
    App.init(context);
    ScreenUtil.init(
      context,
      designSize: const Size(428, 926),
    );

    final forms = FormProvider.state(context);
    final authCubit = AuthCubit.cubit(context);

    return Screen(
      overlayWidgets: [
        BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthLoginFailed) {
              CustomSnackbar.failure(context, state.message!);
            } else if (state is AuthLoginSuccess) {
              forms.loginFormKey.currentState!.reset();
              Navigator.pushNamed(context, AppRoutes.dashboard);
            }
          },
          builder: (context, state) {
            if (state is AuthLoginLoading) {
              return const FullScreenLoader(
                loading: true,
              );
            }
            return const SizedBox();
          },
        ),
      ],
      child: Scaffold(
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
          child: FormBuilder(
            key: forms.loginFormKey,
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
                const CustomTextField(
                  name: 'email',
                  hint: 'Enter email address',
                  textInputType: TextInputType.emailAddress,
                  textCapitalization: TextCapitalization.none,
                ),
                const SizedBox(height: 25),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const CustomTextField(
                  hint: 'Password',
                  name: 'password',
                  textInputType: TextInputType.emailAddress,
                  isSuffixIcon: true,
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
                    onPressed: () {
                      if (forms.loginFormKey.currentState!.saveAndValidate()) {
                        FocusScope.of(context).unfocus();

                        final fields = forms.loginFormKey.currentState!.fields;

                        final values = fields.map(
                          (key, value) => MapEntry(
                            key,
                            value.value.toString().trim(),
                          ),
                        );
                        authCubit.login(
                          values['email']!,
                          values['password']!,
                        );
                      }
                    },
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
          ),
        ),
      ),
    );
  }
}
