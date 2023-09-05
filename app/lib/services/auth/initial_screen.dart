import 'package:app/pages/login_page.dart';
import 'package:app/pages/register_page.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<StatefulWidget> createState() => _InitialScreenState();

}

class _InitialScreenState extends State<InitialScreen> {

  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    }
    else {
      return RegisterPage(onTap: togglePages);
    }
  }

}