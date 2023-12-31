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
    apiKey: 'AIzaSyCB_IsbtoR6ESzQzzoybomnZmzCvj1DOJA',
    appId: '1:826372612150:web:01af0d534a80b125bfb897',
    messagingSenderId: '826372612150',
    projectId: 'todoapp-ios-56202',
    authDomain: 'todoapp-ios-56202.firebaseapp.com',
    storageBucket: 'todoapp-ios-56202.appspot.com',
    measurementId: 'G-TP09BW0G6R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAgF1-j9r2X8CvB7eX5VrdwyF7f5w7HXwA',
    appId: '1:826372612150:android:561826fd860c3329bfb897',
    messagingSenderId: '826372612150',
    projectId: 'todoapp-ios-56202',
    storageBucket: 'todoapp-ios-56202.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBC91XFzB0-taAjUs1NbBp0XYxJgBuT_Bw',
    appId: '1:826372612150:ios:729c12859567aee9bfb897',
    messagingSenderId: '826372612150',
    projectId: 'todoapp-ios-56202',
    storageBucket: 'todoapp-ios-56202.appspot.com',
    iosClientId: '826372612150-93o9ae9vmc0v0ttr7lvm2lcqh3bl8gh3.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuthTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBC91XFzB0-taAjUs1NbBp0XYxJgBuT_Bw',
    appId: '1:826372612150:ios:ae2b99385794a988bfb897',
    messagingSenderId: '826372612150',
    projectId: 'todoapp-ios-56202',
    storageBucket: 'todoapp-ios-56202.appspot.com',
    iosClientId: '826372612150-movl1bk1ifi15d35tsvrneiusbrajpem.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuthTest.RunnerTests',
  );
}
