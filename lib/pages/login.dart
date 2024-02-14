import 'package:flutter/material.dart';
import 'package:acm_mobile/components/gradient.dart'; // Make sure this import path is correct

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key); // Ensure super is passed a key

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Log in page")), // Use const for Text
      body: const GradientBackgroundWidget( 
        child: Center( 
          child: Text(
            "Log in page!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
