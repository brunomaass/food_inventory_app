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
        return macos;
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
    apiKey: 'AIzaSyCZFQU7FOIZLtv_fF9n-nMNi_YEFgRSQAU',
    appId: '1:200041001439:web:a106fbcfbd3a457420d46a',
    messagingSenderId: '200041001439',
    projectId: 'food-inventory--app',
    authDomain: 'food-inventory--app.firebaseapp.com',
    storageBucket: 'food-inventory--app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6hBYIGbq5ww6EZkRtpU_wy6404E0fC1s',
    appId: '1:200041001439:android:6076fd5db93e5c6d20d46a',
    messagingSenderId: '200041001439',
    projectId: 'food-inventory--app',
    storageBucket: 'food-inventory--app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6BclZNDNbTDDWEYJb5xsLVGxN62TrWRo',
    appId: '1:200041001439:ios:860d295d8e3577a320d46a',
    messagingSenderId: '200041001439',
    projectId: 'food-inventory--app',
    storageBucket: 'food-inventory--app.appspot.com',
    iosBundleId: 'com.example.foodInventoryApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD6BclZNDNbTDDWEYJb5xsLVGxN62TrWRo',
    appId: '1:200041001439:ios:860d295d8e3577a320d46a',
    messagingSenderId: '200041001439',
    projectId: 'food-inventory--app',
    storageBucket: 'food-inventory--app.appspot.com',
    iosBundleId: 'com.example.foodInventoryApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCZFQU7FOIZLtv_fF9n-nMNi_YEFgRSQAU',
    appId: '1:200041001439:web:76499734fef093ae20d46a',
    messagingSenderId: '200041001439',
    projectId: 'food-inventory--app',
    authDomain: 'food-inventory--app.firebaseapp.com',
    storageBucket: 'food-inventory--app.appspot.com',
  );

}