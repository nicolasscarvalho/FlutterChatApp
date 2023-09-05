import 'package:app/pages/home_page.dart';
import 'package:app/services/auth/initial_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {

          // User is logged in
          if (snapshot.hasData) {
            return const HomePage();
          }

          // User is NOT logged in
          else {
            return const InitialScreen();
          }

        },
      ),
    );
  }

}