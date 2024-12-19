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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTYvNo7ZyOiC52469xKDTRfD2KmZleVHs',
    appId: '1:597620783906:android:8c66013fe30863c7fe837b',
    messagingSenderId: '597620783906',
    projectId: 'mobile-zainb',
    databaseURL: 'https://mobile-zainb-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'mobile-zainb.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAK3K1e8rGXhL12yMj1pZ5a_LEoB67h5W0',
    appId: '1:597620783906:ios:f2f16d4da33c8757fe837b',
    messagingSenderId: '597620783906',
    projectId: 'mobile-zainb',
    databaseURL: 'https://mobile-zainb-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'mobile-zainb.firebasestorage.app',
    iosBundleId: 'com.example.sensorStream',
  );

}