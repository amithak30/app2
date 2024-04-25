import 'package:flutter/material.dart';
import 'package:app2/widgets/otp_input.dart';
import 'package:app2/screens/home_screen.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('An OTP has been sent to your phone.'),
            OTPInput(), // Reusable OTP input widget
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement verify OTP functionality
                Navigator.pushNamed(context, 'MyHomeScreen');
              },
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
