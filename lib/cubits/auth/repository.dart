part of 'cubit.dart';

class AuthRepository {
  Future<AuthData> login(
    String email,
    String password,
  ) {
    Map<String, dynamic> map = {
      'email': email,
      'password': password,
    };
    return AuthDataProvider.login(map);
  }

  Future<void> register(
    String fullName,
    String email,
    String password,
  ) {
    Map<String, dynamic> map = {
      'fullName': fullName,
      'email': email,
      'password': password,
    };

    return AuthDataProvider.register(map);
  }
}
