import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:pokemon/configs/app.dart';
import 'package:pokemon/configs/configs.dart';
import 'package:pokemon/cubits/auth/cubit.dart';
import 'package:pokemon/providers/form_provider.dart';
import 'package:pokemon/ui/widgets/buttons/app_button.dart';
import 'package:pokemon/ui/widgets/loader/full_screen_loader.dart';
import 'package:pokemon/ui/widgets/screen/screen.dart';
import 'package:pokemon/ui/widgets/texts/app_text_fields/custom_text_form_field.dart';
import 'package:pokemon/ui/widgets/texts/app_text_span/app_text_span.dart';
import 'package:pokemon/ui/widgets/texts/app_text_widget.dart';
import 'package:pokemon/utils/custom_snackbar.dart';
part "widgets/password_hints.dart";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);
    ScreenUtil.init(context, designSize: const Size(428, 926));

    final forms = FormProvider.state(context);
    final authCubit = AuthCubit.cubit(context);

    return Screen(
      overlayWidgets: [
        BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthRegisterFailed) {
              CustomSnackbar.failure(context, state.message!);
            } else if (state is AuthRegisterSuccess) {
              Navigator.pop(context);
              CustomSnackbar.success(
                context,
                'Account has been created. Please check your email for verification. Inbox or Spam folder',
              );
            }
          },
          builder: (context, state) {
            if (state is AuthRegisterLoading) {
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
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: SingleChildScrollView(
              child: FormBuilder(
                key: forms.registerFormKey,
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
                    CustomTextField(
                      name: 'name',
                      hint: 'Full name',
                      textInputType: TextInputType.name,
                      validatorFtn: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'Full name cannot be empty'),
                        FormBuilderValidators.min(2,
                            errorText:
                                'Full name cannot be less than 2 characters')
                      ]),
                    ),
                    Space.y1!,
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
                    CustomTextField(
                      name: 'email',
                      hint: 'Email address',
                      textCapitalization: TextCapitalization.none,
                      textInputType: TextInputType.emailAddress,
                      validatorFtn: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'Email cannot be empty'),
                        FormBuilderValidators.email(
                            errorText: 'Invalid email format'),
                      ]),
                    ),
                    Space.y1!,
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
                    CustomTextField(
                      name: 'password',
                      hint: 'Password',
                      isPass: true,
                      textInputType: TextInputType.text,
                      textCapitalization: TextCapitalization.none,
                      validatorFtn: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'Password cannot be empty'),
                        FormBuilderValidators.minLength(6,
                            errorText:
                                'Password must be greate than 6 characters'),
                      ]),
                    ),
                    const SizedBox(height: 15),
                    const PasswordHints(textString: 'At least 8 characters'),
                    const SizedBox(height: 7),
                    const PasswordHints(
                        textString: 'Include special characters'),
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
                          if (forms.registerFormKey.currentState!
                              .saveAndValidate()) {
                            FocusScope.of(context).unfocus();

                            final fields =
                                forms.registerFormKey.currentState!.fields;

                            final values = fields.map(
                              (key, value) => MapEntry(
                                key,
                                value.value.toString().trim(),
                              ),
                            );
                            authCubit.register(
                              values['name']!,
                              values['email']!,
                              values['password']!,
                            );
                          }
                        },
                        label: 'Sign up',
                      ),
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: RichText(
                        text: TextSpan(
                          text: 'Already a member? ',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
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
            ),
          )),
    );
  }
}
