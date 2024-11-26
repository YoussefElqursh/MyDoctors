// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyC8xzs6XHI8lT3gbLULl2cv0WB_zGJ6OH8',
    appId: '1:700524598035:web:b90b4a2f0cf411d171c0e6',
    messagingSenderId: '700524598035',
    projectId: 'mydoctor-96024',
    authDomain: 'mydoctor-96024.firebaseapp.com',
    storageBucket: 'mydoctor-96024.firebasestorage.app',
    measurementId: 'G-9BDTJDNRMT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvlvaKKiFLec5T7vBALE4GFcIBXFSbEOw',
    appId: '1:700524598035:android:6c4b750f888f402271c0e6',
    messagingSenderId: '700524598035',
    projectId: 'mydoctor-96024',
    storageBucket: 'mydoctor-96024.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdUcLxfdYenBRG9J7D6ck-MXk3W33SVp0',
    appId: '1:700524598035:ios:e77de7f0f61c4d2571c0e6',
    messagingSenderId: '700524598035',
    projectId: 'mydoctor-96024',
    storageBucket: 'mydoctor-96024.firebasestorage.app',
    iosBundleId: 'com.KMY.doctorna',
  );
}