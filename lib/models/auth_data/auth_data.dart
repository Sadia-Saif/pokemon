// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AuthData {
  final String fullName;
  final String email;

  AuthData({
    required this.fullName,
    required this.email,
  });

  AuthData copyWith({
    String? fullName,
    String? email,
  }) {
    return AuthData(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullName': fullName,
      'email': email,
    };
  }

  factory AuthData.fromMap(Map<String, dynamic> map) {
    return AuthData(
      fullName: map['fullName'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthData.fromJson(String source) =>
      AuthData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AuthData(fullName: $fullName, email: $email)';

  @override
  bool operator ==(covariant AuthData other) {
    if (identical(this, other)) return true;

    return other.fullName == fullName && other.email == email;
  }

  @override
  int get hashCode => fullName.hashCode ^ email.hashCode;
}
