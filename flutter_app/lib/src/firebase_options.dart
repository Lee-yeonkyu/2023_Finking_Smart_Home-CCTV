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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAejpiu0ccBH5peIn5YhYbX5Sqi4UZ0TNY',
    appId: '1:216264521269:web:6bdcfd55f15e1b2189237c',
    messagingSenderId: '216264521269',
    projectId: 'home-guardian-1b425',
    authDomain: 'home-guardian-1b425.firebaseapp.com',
    storageBucket: 'home-guardian-1b425.appspot.com',
    measurementId: 'G-HXR01TNPJP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDdnCsZmM1h4Z1ypObg7TgwB2JInO_YE9s',
    appId: '1:216264521269:android:444b270094a3b51389237c',
    messagingSenderId: '216264521269',
    projectId: 'home-guardian-1b425',
    storageBucket: 'home-guardian-1b425.appspot.com',
  );
}
