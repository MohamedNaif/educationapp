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
      return web;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDhqSuG9SzDVayZNoZ-XxOK_MQgyiUT6oI',
    appId: '1:949908442037:web:c1119393e0bcc9f71d27fc',
    messagingSenderId: '949908442037',
    projectId: 'educationapp-20b49',
    authDomain: 'educationapp-20b49.firebaseapp.com',
    storageBucket: 'educationapp-20b49.appspot.com',
    measurementId: 'G-WL7W0GGB5H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAeEA4-EbO7_ic39mD_TP29Hq4ztMXqygY',
    appId: '1:949908442037:android:7a36123b5e5b68fc1d27fc',
    messagingSenderId: '949908442037',
    projectId: 'educationapp-20b49',
    storageBucket: 'educationapp-20b49.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9e03nL4pVvX_-lgUSDhZh8KV8S87Nepg',
    appId: '1:949908442037:ios:cf9932febd41746d1d27fc',
    messagingSenderId: '949908442037',
    projectId: 'educationapp-20b49',
    storageBucket: 'educationapp-20b49.appspot.com',
    iosClientId: '949908442037-e8h1bagho9d28md4dfogjkbae41qlsfc.apps.googleusercontent.com',
    iosBundleId: 'com.example.educationapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB9e03nL4pVvX_-lgUSDhZh8KV8S87Nepg',
    appId: '1:949908442037:ios:3ab88d0d2394198f1d27fc',
    messagingSenderId: '949908442037',
    projectId: 'educationapp-20b49',
    storageBucket: 'educationapp-20b49.appspot.com',
    iosClientId: '949908442037-tp7muff8ihetcohgohgo8bug53m0d3li.apps.googleusercontent.com',
    iosBundleId: 'com.example.educationapp.RunnerTests',
  );
}
