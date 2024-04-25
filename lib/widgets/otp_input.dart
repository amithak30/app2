import 'package:flutter/material.dart';

class OTPInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter OTP',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        maxLength: 6,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
