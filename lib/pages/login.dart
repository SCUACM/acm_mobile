import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:acm_mobile/components/gradient.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
=======
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
>>>>>>> parent of 0bd624e (Gradient Widget)

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Function to handle Google sign-in
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      appBar: AppBar(title: const Text("Login Page")),
      body: GradientBackgroundWidget( // Assuming this is a correctly imported custom widget
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login Page",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20), // Provides spacing between text and button
              ElevatedButton(
                onPressed: () async {
                  try {
                    await signInWithGoogle();
                    // Upon success, you can navigate or display success message
                    print('Successfully signed in with Google');
                  } catch (error) {
                    // Handle errors here
                    print('Error signing in with Google: $error');
                  }
                },
                child: const Text('Sign in with Google'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Button color
                  onPrimary: Colors.black, // Text color
                ),
              ),
            ],
          ),
        ),
=======
      appBar: AppBar(
        title: Text("Log in page")
>>>>>>> parent of 0bd624e (Gradient Widget)
      ),
      body: Center(
        child: Text("Log in page!")
      )
    );
  }
}