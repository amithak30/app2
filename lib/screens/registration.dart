import 'package:flutter/material.dart';
import 'package:app2/widgets/custom_text_field2.dart';
import 'package:app2/screens/home_screen.dart';
import 'package:app2/screens/otp_verification_screen.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(label: 'Email', hintText: 'Enter your email'),
            SizedBox(height: 20),
            CustomTextField(
                label: 'Password',
                hintText: 'Enter your password',
                isPassword: true),
            SizedBox(height: 20),
            CustomTextField(
                label: 'Confirm Password',
                hintText: 'Confirm your password',
                isPassword: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement sign up functionality
                //Navigator.pushNamed(context, 'MyHomeScreen');
                //Navigator.pushNamed(context, 'OTPVerificationScreen');
                Navigator.pushNamed(context, '/OTPVerficationScreen');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
