import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/base.dart';
import '../../models/result.dart';

part 'data_provider.dart';
part 'repo.dart';
part 'state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit() : super(PokeInit());

  final repo = PokeRepo();

  Future<void> fetch() async {
    emit(PokeLoading());

    try {
      final data = await repo.getPoke();

      emit(PokeSuccess(base: data));
    } catch (error) {
      emit(
        PokeFailure(message: error.toString()),
      );
    }
  }
}
