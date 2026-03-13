import 'package:flutter/material.dart';

class photo extends StatelessWidget {
  const photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Center(
        child: Image.asset(
          'assets/logo.jpeg',
          height: 250,
          width: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
