part of 'cubit.dart';

abstract class PokemonState extends Equatable {
  final Base? data;
  final String? error;

  final List<Result>? favourites;

  const PokemonState({
    this.data,
    this.error,
    this.favourites,
  });

  @override
  List<Object> get props => [];
}

class PokeInit extends PokemonState {}

class PokeLoading extends PokemonState {}

class PokeSuccess extends PokemonState {
  const PokeSuccess({Base? base, List<Result>? favs})
      : super(
          data: base,
          favourites: favs,
        );
}

class PokeFailure extends PokemonState {
  const PokeFailure({String? message}) : super(error: message);
}
