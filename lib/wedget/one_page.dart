import 'package:flutter/material.dart';
import 'package:lodin_screen/wedget/Screen.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/one_image.jpeg',
          height: 500,
          width: double.infinity,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            alignment: Alignment.bottomCenter,
            fixedSize: Size(350, 50),
            elevation: 7,
            backgroundColor: Colors.red,
            iconSize: 500,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScreenPage()),
            );
          },
          child: Text(
            'دعنا  نبدء   ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
