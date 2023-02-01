part of 'cubit.dart';

@immutable
class AuthState extends Equatable {
  final AuthData? data;
  final String? message;

  const AuthState({
    this.data,
    this.message,
  });
  @override
  List<Object?> get props => [
        data,
        message,
      ];
}

@immutable
class AuthDefault extends AuthState {}

@immutable
class AuthFetchLoading extends AuthState {
  const AuthFetchLoading() : super();
}

@immutable
class AuthFetchSuccess extends AuthState {
  const AuthFetchSuccess({AuthData? data}) : super(data: data);
}

@immutable
class AuthFetchFailed extends AuthState {
  const AuthFetchFailed({String? message}) : super(message: message);
}

// login
@immutable
class AuthLoginLoading extends AuthState {
  const AuthLoginLoading() : super();
}

@immutable
class AuthLoginSuccess extends AuthState {
  const AuthLoginSuccess({AuthData? data}) : super(data: data);
}

@immutable
class AuthLoginFailed extends AuthState {
  const AuthLoginFailed({String? message}) : super(message: message);
}

// register
@immutable
class AuthRegisterLoading extends AuthState {
  const AuthRegisterLoading() : super();
}

@immutable
class AuthRegisterSuccess extends AuthState {
  const AuthRegisterSuccess() : super();
}

@immutable
class AuthRegisterFailed extends AuthState {
  const AuthRegisterFailed({String? message}) : super(message: message);
}





// logout
@immutable
class AuthLogoutLoading extends AuthState {
  const AuthLogoutLoading() : super();
}

@immutable
class AuthLogoutSuccess extends AuthState {
  const AuthLogoutSuccess({AuthData? data}) : super(data: data);
}

@immutable
class AuthLogoutFailed extends AuthState {
  const AuthLogoutFailed({String? message}) : super(message: message);
}
