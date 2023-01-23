import 'package:flutter/widgets.dart';
import 'package:pokemon/app/bloc/app_bloc.dart';
import 'package:pokemon/ui/views/dashboard/dashboard.dart';
import 'package:pokemon/ui/views/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [DashboardScreen.page()];
    case AppStatus.unauthenticated:
      return [LoginScreen.page()];
  }
}
