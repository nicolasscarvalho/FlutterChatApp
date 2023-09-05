import 'package:app/firebase_options.dart';
import 'package:app/services/auth/auth_gate.dart';
import 'package:app/services/auth/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


  runApp(

    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const MainApp(),
    )

  );
  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthGate()
    );
  }
}
