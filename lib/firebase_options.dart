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
        return windows;
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
    apiKey: 'AIzaSyCQXCJzSLc-Ki9Sio9_U1ukoAoECKK2r4I',
    appId: '1:394728838570:web:8f0eff65ee06d4118387d3',
    messagingSenderId: '394728838570',
    projectId: 'e-comarce-6d13f',
    authDomain: 'e-comarce-6d13f.firebaseapp.com',
    storageBucket: 'e-comarce-6d13f.appspot.com',
    measurementId: 'G-0MP7YY2TV1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCizFzVN8CZaoLv-_m9ccRiqBGiFKFSH24',
    appId: '1:394728838570:android:41033d95517a51668387d3',
    messagingSenderId: '394728838570',
    projectId: 'e-comarce-6d13f',
    storageBucket: 'e-comarce-6d13f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD837MIESYffvv4Yalr8mrUS3kkmRmMFiM',
    appId: '1:394728838570:ios:f75916b4d1571c728387d3',
    messagingSenderId: '394728838570',
    projectId: 'e-comarce-6d13f',
    storageBucket: 'e-comarce-6d13f.appspot.com',
    iosBundleId: 'com.example.eComarceClean',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCQXCJzSLc-Ki9Sio9_U1ukoAoECKK2r4I',
    appId: '1:394728838570:web:70f4a6fa10b8c1298387d3',
    messagingSenderId: '394728838570',
    projectId: 'e-comarce-6d13f',
    authDomain: 'e-comarce-6d13f.firebaseapp.com',
    storageBucket: 'e-comarce-6d13f.appspot.com',
    measurementId: 'G-P0F52B9BTV',
  );
}
