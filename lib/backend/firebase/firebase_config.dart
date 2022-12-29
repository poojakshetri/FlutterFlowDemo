import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCB6fcvGhBsOpn_YxOKWPdMqaqBhtnQfnA",
            authDomain: "a2bdestinationcustomer.firebaseapp.com",
            projectId: "a2bdestinationcustomer",
            storageBucket: "a2bdestinationcustomer.appspot.com",
            messagingSenderId: "1061343711397",
            appId: "1:1061343711397:web:189352f618f31f1c71fd4c",
            measurementId: "G-101VR2GWNB"));
  } else {
    await Firebase.initializeApp();
  }
}
