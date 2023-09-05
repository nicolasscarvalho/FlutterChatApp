import 'package:app/components/button.dart';
import 'package:app/components/text_input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // Text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
    
            padding: const EdgeInsets.all(25),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          
              // Page title
              const Text('Login'),
              
              // Blank space
              const SizedBox(height: 25),
              
              // E-mail and password input
              TextInput(controller: emailController, hintText: 'E-mail', obscureText: false),
              TextInput(controller: passwordController, hintText: 'Password', obscureText: true),
                
              // Blank space
              const SizedBox(height: 25),
    
              // Submit button
              Button(onTap: (){}, text: 'Submit'),
    
              // Blank space
              const SizedBox(height: 25),
    
              // Link to register page
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  const Text('Not a member? '),
                  
                  GestureDetector(

                    onTap: widget.onTap,
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),

                  )
    
                ],
              )
    
            ],),
          ),
        ),
      ),
    );
  }

}