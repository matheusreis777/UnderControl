import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAphbqV-HQSBpraabUjXxxTegZYkvYFF4M",
            authDomain: "undercontrol-b2e00.firebaseapp.com",
            projectId: "undercontrol-b2e00",
            storageBucket: "undercontrol-b2e00.appspot.com",
            messagingSenderId: "950069037421",
            appId: "1:950069037421:web:6aceaa1bc4227a6db37264",
            measurementId: "G-6MGKBHYBNG"));
  } else {
    await Firebase.initializeApp();
  }
}
