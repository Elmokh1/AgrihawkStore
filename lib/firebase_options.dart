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
    apiKey: 'AIzaSyDurFyeu2XdKozgmogQ8pB_JqlAnw6WCc0',
    appId: '1:478853604563:web:99b05e26f45acd8342e026',
    messagingSenderId: '478853604563',
    projectId: 'todo-store-f8b8d',
    authDomain: 'todo-store-f8b8d.firebaseapp.com',
    storageBucket: 'todo-store-f8b8d.appspot.com',
    measurementId: 'G-R0Y410E28B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCjMxqfjr8dnkyUltdufufWU7Ly3FN-QhM',
    appId: '1:478853604563:android:0e970312f6fd709542e026',
    messagingSenderId: '478853604563',
    projectId: 'todo-store-f8b8d',
    storageBucket: 'todo-store-f8b8d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAnSpM32kevWjJcvyUnGi_CapTOnToDpo',
    appId: '1:478853604563:ios:421d57625dcb639b42e026',
    messagingSenderId: '478853604563',
    projectId: 'todo-store-f8b8d',
    storageBucket: 'todo-store-f8b8d.appspot.com',
    iosBundleId: 'com.example.store',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAAnSpM32kevWjJcvyUnGi_CapTOnToDpo',
    appId: '1:478853604563:ios:10140dbaacf1c9a342e026',
    messagingSenderId: '478853604563',
    projectId: 'todo-store-f8b8d',
    storageBucket: 'todo-store-f8b8d.appspot.com',
    iosBundleId: 'com.example.store.RunnerTests',
  );
}
