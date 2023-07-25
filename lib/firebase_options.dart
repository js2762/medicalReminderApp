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
    apiKey: 'AIzaSyAeXgaguhqidGtVMRTVMfbJpoZq8_ckALM',
    appId: '1:272335811708:web:9492de60856d23d6e145f9',
    messagingSenderId: '272335811708',
    projectId: 'healthapp-a1bc3',
    authDomain: 'healthapp-a1bc3.firebaseapp.com',
    storageBucket: 'healthapp-a1bc3.appspot.com',
    measurementId: 'G-FJ3Y0BRZZ3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHRn9fB6iLRWXUEaQVpR9EyMavDr1mSsE',
    appId: '1:272335811708:android:808d54c5fdb7b441e145f9',
    messagingSenderId: '272335811708',
    projectId: 'healthapp-a1bc3',
    storageBucket: 'healthapp-a1bc3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvZn5MNRgqOyyOKOHEYhVsopBIgv9J1_8',
    appId: '1:272335811708:ios:ba01cd8cfff17e06e145f9',
    messagingSenderId: '272335811708',
    projectId: 'healthapp-a1bc3',
    storageBucket: 'healthapp-a1bc3.appspot.com',
    iosClientId: '272335811708-usmgmtt531t7tofp3oitk1chqkc89e66.apps.googleusercontent.com',
    iosBundleId: 'com.example.health',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvZn5MNRgqOyyOKOHEYhVsopBIgv9J1_8',
    appId: '1:272335811708:ios:d51bbe28cd692b3ae145f9',
    messagingSenderId: '272335811708',
    projectId: 'healthapp-a1bc3',
    storageBucket: 'healthapp-a1bc3.appspot.com',
    iosClientId: '272335811708-hvq9kl8es4s091ocmdut6drovjegf9v7.apps.googleusercontent.com',
    iosBundleId: 'com.example.health.RunnerTests',
  );
}