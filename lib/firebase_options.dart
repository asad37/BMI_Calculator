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
    apiKey: 'AIzaSyDgtCkHCQWWNW3uzAITAnTTlbc1zGHhchM',
    appId: '1:1039694239805:web:8044664a00c303b23ab254',
    messagingSenderId: '1039694239805',
    projectId: 'bmi-app-967fe',
    authDomain: 'bmi-app-967fe.firebaseapp.com',
    storageBucket: 'bmi-app-967fe.appspot.com',
    measurementId: 'G-QG69RBWGHX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeMvkjFhiveoQA_j-fVQ5fcgKErme6EvQ',
    appId: '1:1039694239805:android:cbca71a363843bc83ab254',
    messagingSenderId: '1039694239805',
    projectId: 'bmi-app-967fe',
    storageBucket: 'bmi-app-967fe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWd6nbEz3QKeAc6AQG7PtPEDfAIVfrVtg',
    appId: '1:1039694239805:ios:1a8888b6549e88823ab254',
    messagingSenderId: '1039694239805',
    projectId: 'bmi-app-967fe',
    storageBucket: 'bmi-app-967fe.appspot.com',
    iosClientId: '1039694239805-mejqeei1keu0ur332cret3taenn5bucc.apps.googleusercontent.com',
    iosBundleId: 'com.example.bmiapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWd6nbEz3QKeAc6AQG7PtPEDfAIVfrVtg',
    appId: '1:1039694239805:ios:b1ad3b6462451ec23ab254',
    messagingSenderId: '1039694239805',
    projectId: 'bmi-app-967fe',
    storageBucket: 'bmi-app-967fe.appspot.com',
    iosClientId: '1039694239805-76is8111mq983k17kmmgvfrmjrv8sdi8.apps.googleusercontent.com',
    iosBundleId: 'com.example.bmiapp.RunnerTests',
  );
}