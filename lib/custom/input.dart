import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Pinput(
          length: 4,
          defaultPinTheme: PinTheme(
            width: 60,
            height: 60,
            textStyle: TextStyle(fontSize: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.horizontal(
                left: Radius.elliptical(10, 10),
                right: Radius.elliptical(10, 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
