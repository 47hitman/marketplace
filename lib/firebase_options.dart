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
    apiKey: 'AIzaSyCyvS-UJCLnz1RLiAM3TmHxGDc_tMAZ_ws',
    appId: '1:211899655207:web:c0932250e886fe71bc9a02',
    messagingSenderId: '211899655207',
    projectId: 'protofolio-e92b6',
    authDomain: 'protofolio-e92b6.firebaseapp.com',
    storageBucket: 'protofolio-e92b6.appspot.com',
    measurementId: 'G-DB690TLH5W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBwb9SJKpfm5uo9wA6igcpjtZySImuXhw',
    appId: '1:211899655207:android:59738837e11b5a8ebc9a02',
    messagingSenderId: '211899655207',
    projectId: 'protofolio-e92b6',
    storageBucket: 'protofolio-e92b6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6X5tQSJ_d5s7l4Gb_k7Rx3OGIQ_O1RmU',
    appId: '1:211899655207:ios:b6d9604a84f23fffbc9a02',
    messagingSenderId: '211899655207',
    projectId: 'protofolio-e92b6',
    storageBucket: 'protofolio-e92b6.appspot.com',
    iosBundleId: 'com.example.proto',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6X5tQSJ_d5s7l4Gb_k7Rx3OGIQ_O1RmU',
    appId: '1:211899655207:ios:27c7bf4039892aabbc9a02',
    messagingSenderId: '211899655207',
    projectId: 'protofolio-e92b6',
    storageBucket: 'protofolio-e92b6.appspot.com',
    iosBundleId: 'com.example.proto.RunnerTests',
  );
}
