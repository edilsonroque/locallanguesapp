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
    apiKey: 'AIzaSyBWBMmNg1hMjXbONOPQbocVXlLEYybiVBs',
    appId: '1:845099345835:web:5a6bd5e6eecf74fad194ee',
    messagingSenderId: '845099345835',
    projectId: 'locallanguagesapp',
    authDomain: 'locallanguagesapp.firebaseapp.com',
    storageBucket: 'locallanguagesapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-hPt-kjN7csW6fK5BMRdE8kwZbBEpgHs',
    appId: '1:845099345835:android:353a3092fb4d5f1fd194ee',
    messagingSenderId: '845099345835',
    projectId: 'locallanguagesapp',
    storageBucket: 'locallanguagesapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAR8fVSWq7mo9RLvA_scso440uRdnWau7w',
    appId: '1:845099345835:ios:07232000b49ec09fd194ee',
    messagingSenderId: '845099345835',
    projectId: 'locallanguagesapp',
    storageBucket: 'locallanguagesapp.appspot.com',
    iosBundleId: 'com.example.locallanguagesapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAR8fVSWq7mo9RLvA_scso440uRdnWau7w',
    appId: '1:845099345835:ios:098b61ed430d52aad194ee',
    messagingSenderId: '845099345835',
    projectId: 'locallanguagesapp',
    storageBucket: 'locallanguagesapp.appspot.com',
    iosBundleId: 'com.example.locallanguagesapp.RunnerTests',
  );
}
