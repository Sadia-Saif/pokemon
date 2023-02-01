import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class FormProvider extends ChangeNotifier {
  static FormProvider state(BuildContext context) =>
      Provider.of<FormProvider>(context, listen: false);

  final loginFormKey = GlobalKey<FormBuilderState>();
  final registerFormKey = GlobalKey<FormBuilderState>();
  // final prefsFormKey = GlobalKey<FormBuilderState>();
}
