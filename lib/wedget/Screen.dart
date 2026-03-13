import 'package:flutter/material.dart';

import 'package:lodin_screen/Screen/Login.dart';

//  الصفحة الافتتاحية1
class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xffe5e5e5),
      //   elevation: 1,
      //   title: Text('Login +Rad', style: TextStyle(color: Color(0xffa6a6a6))),
      // ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.jpeg',
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 7),
                LoginPage(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 40, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add, size: 40, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event, size: 40, color: Colors.grey),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 40, color: Colors.blue),
            label: '',
          ),
        ],
      ),
    );
  }
}
