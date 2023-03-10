// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGtT3qsFFJ91foLRsRzN-ELQxCbtxrvPE',
    appId: '1:883394750750:android:0f887a1e98c86c9edc410f',
    messagingSenderId: '883394750750',
    projectId: 'pokemon-c2925',
    storageBucket: 'pokemon-c2925.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBX4f9X_ynSy6EThg_i3tdFvjxDlWJxVek',
    appId: '1:883394750750:ios:4fa7a78c93b2cc9ddc410f',
    messagingSenderId: '883394750750',
    projectId: 'pokemon-c2925',
    storageBucket: 'pokemon-c2925.appspot.com',
    iosClientId: '883394750750-9c30mqn596s7t63da3pa77f2cl5p8qhl.apps.googleusercontent.com',
    iosBundleId: 'com.example.pokemon',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBX4f9X_ynSy6EThg_i3tdFvjxDlWJxVek',
    appId: '1:883394750750:ios:4fa7a78c93b2cc9ddc410f',
    messagingSenderId: '883394750750',
    projectId: 'pokemon-c2925',
    storageBucket: 'pokemon-c2925.appspot.com',
    iosClientId: '883394750750-9c30mqn596s7t63da3pa77f2cl5p8qhl.apps.googleusercontent.com',
    iosBundleId: 'com.example.pokemon',
  );
}
