// screens/login_screen.dart
import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import 'package:app2/screens/otp_verification_screen.dart';
import 'package:app2/screens/registration.dart';
import 'package:app2/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(label: 'Email'),
            SizedBox(height: 16.0),
            CustomTextField(label: 'Password', isPassword: true),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Handle sign-in button press
                //Navigator.pushNamed(context, '/OTPVerficationScreen');
                //OTPVerificationScreen();
                Navigator.pushNamed(context, 'MyHomeScreen');
              },
              child: Text('Sign In'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navigate to sign-up screen
                // Navigator.pushNamed(context, '/signup');
                Navigator.pushNamed(context, 'RegistrationScreen');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
