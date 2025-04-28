import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBLuDqUTJLOxvEolkIpQJvvBXUnnLDyXiU",
            authDomain: "elun-8d43d.firebaseapp.com",
            projectId: "elun-8d43d",
            storageBucket: "elun-8d43d.firebasestorage.app",
            messagingSenderId: "511783899701",
            appId: "1:511783899701:web:af46893530a0e4a765577c",
            measurementId: "G-QWSX80V2NT"));
  } else {
    await Firebase.initializeApp();
  }
}
