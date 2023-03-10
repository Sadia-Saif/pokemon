part of 'cubit.dart';

class AuthDataProvider {
  static final firebaseAuth = FirebaseAuth.instance;
  static final firestore = FirebaseFirestore.instance;
  static final users = FirebaseFirestore.instance.collection('users');
  static final usersData = FirebaseFirestore.instance.collection('users');

  static Future<AuthData> login(Map<String, dynamic> map) async {
    try {
      final user = (await firebaseAuth.signInWithEmailAndPassword(
        email: map['email'],
        password: map['password'],
      ))
          .user;
      final raw = await users.doc(user!.uid).get();
      final rawMap = raw.data();

      AuthData authData = AuthData.fromMap(rawMap!);

      return authData;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "wrong-password":
          throw Exception(
              "Invalid password or email address. Please Try again!");
        case "user-not-found":
          throw Exception(
              "Account not found against this email address, please sign up!");
        case "invalid-email":
          throw Exception(
              "Invalid password or email address. Please Try again!");
        case "account-exists-with-different-credential":
          throw Exception(
              "Account already logged in via social login. Please try alternative way.");
        default:
          throw Exception(
            e.message,
          );
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<void> register(Map<String, dynamic> map) async {
    try {
      final user = (await firebaseAuth.createUserWithEmailAndPassword(
        email: map['email'],
        password: map['password'],
      ))
          .user;

      if (user != null) {
        map['uid'] = user.uid;
        await user.sendEmailVerification();
        await user.updateDisplayName(map['fullName']);

        map.remove('password');
        await users.doc(user.uid).set(map);
      }
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "email-already-in-use":
          throw Exception("Email already in use, Try with different Email");
        case "invalid-email":
          throw Exception("Invalid email address!");
        case "account-exists-with-different-credential":
          throw Exception("Account already logged in");
        default:
          throw Exception(e.message);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
