// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:pokemon/models/auth_data/auth_data.dart';

part 'data_provider.dart';
part 'repository.dart';
part 'state.dart';

class AuthCubit extends Cubit<AuthState> {
  static AuthCubit cubit(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<AuthCubit>(context, listen: listen);

  AuthCubit() : super(AuthDefault());

  final repo = AuthRepository();

  Future<void> login(
    String email,
    String password,
  ) async {
    emit(const AuthLoginLoading());
    try {
      final data = await repo.login(
        email,
        password,
      );

      emit(AuthLoginSuccess(data: data));
    } catch (e) {
      emit(AuthLoginFailed(message: e.toString()));
    }
  }

  Future<void> register(
    String fullName,
    String email,
    String password,
  ) async {
    emit(const AuthRegisterLoading());
    try {
      await repo.register(
        fullName,
        email,
        password,
      );

      emit(const AuthRegisterSuccess());
    } catch (e) {
      emit(AuthRegisterFailed(message: e.toString()));
    }
  }

  Future<void> logout() async {
    emit(const AuthLogoutLoading());
    try {
      await FirebaseAuth.instance.signOut();
      emit(const AuthLogoutSuccess());
    } catch (e) {
      emit(AuthLogoutFailed(message: e.toString()));
    }
  }
}
