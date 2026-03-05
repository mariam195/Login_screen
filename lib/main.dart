import 'package:flutter/material.dart';
import 'package:lodin_screen/wedget/Screen.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ScreenPage());
  }
}
