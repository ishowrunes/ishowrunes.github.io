import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ishowrunes/widgets/runes_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeStore();
  runApp(const RunesApp());
}


Future<void> _initializeStore() {
  return Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCH4qDkPDtoMOwTlaLj3XBMeRevNLbvk2E',
      appId: '1:820892243446:web:3a693c16ab8da40a1da3d7',
      messagingSenderId: '820892243446',
      projectId: 'portfolio-isr',
    ),
  );
}
