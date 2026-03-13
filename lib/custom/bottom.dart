import 'package:flutter/material.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
