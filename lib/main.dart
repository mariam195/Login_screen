import 'package:flutter/material.dart';
import 'package:lodin_screen/Screen/Logout.dart';
import 'package:lodin_screen/Screen/Screen_2.dart';
import 'package:lodin_screen/Screen/otp_screen.dart';
import 'package:lodin_screen/wedget/one_page.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
            // OtpScreen(),
            OnePage(),
        //     // Screen_Regisr(),
        //     LogoutPage(),
        // // ScreenPage(),
        //  LoginPage()
      ),
    );
  }
}
