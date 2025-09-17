import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // Makes sure all Flutter bindings are ready before Firebase initializes
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with the config from firebase_options.dart
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediMy',
      home: Scaffold(
        appBar: AppBar(title: const Text('MediMy')),
        body: const Center(child: Text('✅ Firebase Connected!')),
      ),
    );
  }
}
